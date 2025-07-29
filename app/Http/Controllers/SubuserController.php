<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Yajra\DataTables\DataTables;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Hash;

class SubuserController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('sub_users.index');
    }

    public function list(Request $request)
    {
        if ($request->ajax()) {
            $data = User::select(['id', 'name', 'email', 'created_at'])->whereNotNull('parent_user_id');

            return DataTables::of($data)
                ->addColumn('status', function ($row) {
                    return $row->user_status ? 'Active' : 'Inactive';
                })
                ->addColumn('action', function ($row) {
                    return '
                        <a href="' . route('sub-users.edit', $row->id) . '" class="btn btn-sm btn-primary editBtn" data-id="'.$row->id.'">Edit</a>
                        <button class="btn btn-sm btn-danger deleteBtn" data-id="'.$row->id.'">Delete</button>
                    ';
                })
                ->rawColumns(['action'])
                ->make(true);
        }
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $users = User::whereNull('parent_user_id')->get();  // Assuming you want to fetch all users for the parent user selection
        return view('sub_users.create',compact('users'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validated = $request->validate([
            'name' => 'required',
            'email' => 'required|email|unique:users',
            'password' => 'required|min:6',
            'user_mobile_no' => 'nullable|digits_between:10,12',
            'parent_user_id' => 'required|exists:users,id',
        ]);

        $validated['password'] = Hash::make($request->password);
        if ($request->has('user_status')) {
            $validated['user_status'] = $request->has('user_status') ? '1' : '0';
        }
        $validated['email_verified_at'] = now();
        $validated['user_type'] = 'employee';
        User::create($validated);
        return redirect()->route('sub-users.index')->with('success', 'Sub User created successfully');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $user = User::findOrFail($id);
        $users = User::whereNull('parent_user_id')->get();
        return view('sub_users.edit', compact('user', 'users'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $validated = $request->validate([
            'name' => 'required',
            'email' => 'required|email|unique:users,email,' . $id,
            'user_mobile_no' => 'nullable|digits_between:10,12',
            'parent_user_id' => 'required|exists:users,id',
        ]);
        if ($request->has('user_status')) {
            $validated['user_status'] = $request->has('user_status') ? '1' : '0';
        }
        $validated['user_type'] = 'employee';
        $user = User::findOrFail($id);
        $user->update($validated);

        return redirect()->route('sub-users.index')->with('success', 'Sub User updated successfully.');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
