<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('User') }}
        </h2>
    </x-slot>
    
    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900">
                    <form action="{{ route('sub-users.store') }}" method="POST">
                        @csrf
                        <div class="mb-2">
                            <label>Parent User</label>
                            <select name="parent_user_id" class="form-control" required>
                                <option value="">Select Parent User</option>
                                @foreach($users as $user)
                                    <option value="{{ $user->id }}">{{ $user->name }}</option>
                                @endforeach
                            </select>
                            @error('parent_user_id') <div class="text-danger">{{ $message }}</div> @enderror
                        </div>
                        <div class="mb-2">
                            <label>Name</label>
                            <input type="text" name="name" class="form-control" value="{{ old('name') }}" required>
                            @error('name') <div class="text-danger">{{ $message }}</div> @enderror
                        </div>
                        <div class="mb-2">
                            <label>Email</label>
                            <input type="email" name="email" class="form-control" value="{{ old('email') }}" required>
                            @error('email') <div class="text-danger">{{ $message }}</div> @enderror
                        </div>
                        <div class="mb-2">
                            <label>Mobile No</label>
                            <input type="text" name="user_mobile_no" maxlength="12" pattern="\d*" inputmode="numeric" class="form-control" value="{{ old('user_mobile_no') }}" required>
                        </div>
                        <div class="mb-2 form-check">
                            <input type="checkbox" class="form-check-input" name="user_status" id="user_status" checked>
                            <label class="form-check-label" for="user_status">Active</label>
                        </div>
                        <div class="mb-2">
                            <label>Password</label>
                            <input type="password" name="password" class="form-control" required>
                            @error('password') <div class="text-danger">{{ $message }}</div> @enderror
                        </div>

                        <button class="btn btn-primary">Save</button>
                        <a href="{{ route('users.index') }}" class="btn btn-secondary">Back</a>
                    </form>
                </div>
            </div>
        </div>
    </div>
    
</x-app-layout>
