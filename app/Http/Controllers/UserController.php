<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Yajra\DataTables\DataTables;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('users.index');
    }

    public function list(Request $request)
    {
        if ($request->ajax()) {
            $data = User::select(['id', 'name', 'email', 'created_at'])->whereNull('parent_user_id');

            return DataTables::of($data)
                ->addColumn('status', function ($row) {
                    return $row->user_status ? 'Active' : 'Inactive';
                })
                ->addColumn('action', function ($row) {
                    return '
                        <a href="' . route('users.edit', $row->id) . '" class="btn btn-sm btn-primary editBtn" data-id="'.$row->id.'">Edit</a>
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
        return view('users.create');
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
            'user_type' => 'required|in:admin,user',
        ]);

        $validated['password'] = Hash::make($request->password);
        if ($request->has('user_status')) {
            $validated['user_status'] = $request->has('user_status') ? '1' : '0';
        }
        $validated['email_verified_at'] = now();
        User::create($validated);
        
        return redirect()->route('users.index')->with('success', 'User created successfully');
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
        // dd($user);
        return view('users.edit', compact('user'));
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
            'user_type' => 'required|in:admin,user',
        ]);
        if ($request->has('user_status')) {
            $validated['user_status'] = $request->has('user_status') ? '1' : '0';
        }
        $user = User::findOrFail($id);
        $user->update($validated);

        return redirect()->route('users.index')->with('success', 'User updated successfully.');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $user = User::findOrFail($id);
        $user->delete();
        return response()->json(['success' => true, 'message' => 'User deleted successfully']);
    }
}
