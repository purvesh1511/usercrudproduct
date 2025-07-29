<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Products') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                @if(session('success'))
                    <div class="alert alert-success">{{ session('success') }}</div>
                @endif

                <div class="p-6 text-gray-900">
                    <table class="table table-bordered" id="productTable">
                        <thead>
                            <tr>
                                <th>ID</th><th>Name</th><th>Price</th><th>Category</th><th>Created At</th><th>Action</th>
                            </tr>
                        </thead>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <script>
    $(document).ready(function () {
        $('#productTable').DataTable({
            processing: true,
            serverSide: true,
            ajax: '{{ route('products.list') }}',
            columns: [
                { data: 'id' }, { data: 'name' }, { data: 'price' }, { data: 'category' }, { data: 'created_at' },{ data: 'action', orderable: false, searchable: false}
            ]
        });

        $(document).on('click', '.deleteBtn', function() {
            let id = $(this).data('id');
            if (confirm("Are you sure you want to delete this product?")) {
                $.ajax({
                    url: `/products/${id}`,
                    type: 'DELETE',
                    data: { _token: '{{ csrf_token() }}' },
                    success: function(res) {
                        $('#productTable').DataTable().ajax.reload();
                    }
                });
            }
        });
    });
    </script>
</x-app-layout>
