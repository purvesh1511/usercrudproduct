<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;
use Yajra\DataTables\DataTables;
use Illuminate\Support\Facades\Auth;
class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('categories.index');
    }

    public function list(Request $request)
    {
        if ($request->ajax()) {
            $data = Category::select(['id', 'name', 'description', 'status', 'created_at']);

            return DataTables::of($data)
                ->addColumn('status', fn($row) => $row->status ? 'Active' : 'Inactive')
                ->addColumn('action', function ($row) {
                    $action = '';
                    if (Auth::user()->user_type === 'admin') {
                        $action .= '<button class="btn btn-sm btn-danger deleteBtn" data-id="'.$row->id.'">Delete</button>';
                    }
                    return $action ?? '-';
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
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
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
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $user = Category::findOrFail($id);
        $user->delete();
        return response()->json(['success' => true, 'message' => 'Category deleted successfully']);
    }
}
