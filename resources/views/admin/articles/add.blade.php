@extends('admin.layouts.index')


@section('content')
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Bài viết
                    <small>Thêm</small>
                </h1>
                <form action="{{ route('article.add') }}" method="POST" enctype="multipart/form-data">

                    @csrf
                    <div class="form-group">
                        <label for="title">Tiêu đề: <span class="text-danger">*</span></label>
                        <input type="text" class="form-control" placeholder="Nhập tiêu đề" id="title" name="title" required>
                    </div>
                    <div class="form-group">
                        <label for="content">Nội dung:</label>
                        <textarea class="form-control" id="content" name="content" required></textarea>
                    </div>
                    <div class="form-group">
                        <label for="sort_order">Thứ tự: <span class="text-danger">*</span></label>
                        <input type="number" class="form-control" placeholder="Nhập thứ tự" id="sort_order" name="sort_order" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Thêm</button>
                  </form>
            </div>
        </div>
    </div>    
</div>
@endsection