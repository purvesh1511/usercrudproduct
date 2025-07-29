<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Edit User') }}
        </h2>
    </x-slot>
    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900">
                    <form action="{{ route('sub-users.update', $user->id) }}" method="POST">
                        @csrf
                        @method('PUT')
                        <div class="mb-2">
                            <label>Parent User</label>
                            <select name="parent_user_id" class="form-control" required>
                                <option value="">Select Parent User</option>
                                @foreach($users as $parentUser)
                                    <option value="{{ $parentUser->id }}" {{ old('parent_user_id', $user->parent_user_id) == $parentUser->id ? 'selected' : '' }}>
                                        {{ $parentUser->name }}
                                    </option>
                                @endforeach
                            </select>
                            @error('parent_user_id') <div class="text-danger">{{ $message }}</div> @enderror
                        </div>
                        <div class="mb-2">
                            <label>Name</label>
                            <input type="text" name="name" class="form-control" value="{{ old('name', $user->name) }}">
                            @error('name') <div class="text-danger">{{ $message }}</div> @enderror
                        </div>

                        <div class="mb-2">
                            <label>Email</label>
                            <input type="email" readonly name="email" class="form-control" value="{{ old('email', $user->email) }}">
                            @error('email') <div class="text-danger">{{ $message }}</div> @enderror
                        </div>

                        <div class="mb-2">
                            <label>Mobile No</label>
                            <input type="text" name="user_mobile_no" maxlength="12" pattern="\d*" inputmode="numeric" class="form-control" value="{{ old('user_mobile_no', $user->user_mobile_no) }}">
                            @error('user_mobile_no') <div class="text-danger">{{ $message }}</div> @enderror
                        </div>

                        <div class="mb-2 form-check">
                            <input type="checkbox" class="form-check-input" name="user_status" id="user_status" {{ $user->user_status ? 'checked' : '' }}>
                            <label class="form-check-label" for="user_status">Active</label>
                        </div>

                        <button class="btn btn-primary">Update</button>
                        <a href="{{ route('users.index') }}" class="btn btn-secondary">Back</a>
                    </form>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
