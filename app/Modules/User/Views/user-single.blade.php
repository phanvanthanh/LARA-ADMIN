@if($error=="")    
    @php $checkData=0; @endphp
    @php if($data){$checkData=1;} @endphp
    {{ csrf_field() }}
    @if($checkData==1)
    <input type="hidden" name="id" class="id" value="{{$data['id']}}">
    @endif
    <div class="form-group row">
        <label for="name" class="col-sm-4 col-form-label ">Họ và tên <span class="text-danger">(*)</span></label>
        <div class="col-sm-8">
           <input type="Text" class="form-control name" name="name" placeholder="Vui lòng nhập họ và tên nhân viên" @if($checkData==1)  value="{{$data['name']}}" @endif>
        </div>
     </div>

     <div class="form-group row">
        <label for="email" class="col-sm-4 col-form-label ">Tên đăng nhập <span class="text-danger">(*)</span></label>
        <div class="col-sm-8">
           <input type="Text" class="form-control email" name="email" placeholder="Vui lòng nhập tên đăng nhập" @if($checkData==1)  value="{{$data['email']}}" @endif>
        </div>
     </div>

     <div class="form-group row">
        <label for="password" class="col-sm-4 col-form-label ">Mật khẩu</label>
        <div class="col-sm-8">
           <input type="Password" class="form-control password" name="password" placeholder="Nhập mật khẩu đăng nhập">
        </div>
     </div>
     <div class="form-group row">
        <label for="di_dong" class="col-sm-4 col-form-label ">Số điện thoại</label>
        <div class="col-sm-8">
           <input type="Text" class="form-control di_dong" name="di_dong" placeholder="Vui lòng nhập số điện thoại" @if($checkData==1)  value="{{$data['di_dong']}}" @endif>
        </div>
     </div>

     <div class="form-group row">
        <label for="hinh_anh" class="col-sm-4 col-form-label ">Ảnh đại diện</label>
        <!-- <label for="tieu_de" class="text-title-input-size">* Upload file</label> -->               
        <div class="input-group col-sm-8">
            <input type="text" class="form-control d-none d-sm-block" disabled="" placeholder="Có thể upload các file hình ảnh, video, word, excel, pdf.">
            <div class="input-group-append">
              <button class="btn btn-vnpt btn-browse-file" click-on-class=".input-file" type="button"><i class="icon-cloud-upload"></i> Chọn file cần upload</button>         
              <input type="file" class="input-file" show-file=".giz-upload-01" name="file_payc[]" multiple hidden="true">
            </div>
          </div>
        <span class="show-file giz-upload-01"></span>
      </div>

     <div class="form-group row">
        <label for="state" class="col-sm-4 col-form-label">Trạng thái mở/đóng</label>
        <div class="col-sm-8">
           <select class="form-control state" name="state">
            <option value="1" @if($checkData==1)  @if($data['state']==1){{'selected="selected"'}}@endif @endif>Mở</option>
            <option value="0" @if($checkData==1)  @if($data['state']==0){{'selected="selected"'}}@endif @endif>Đóng</option>
          </select>
        </div>
     </div>         
@else
  {{ csrf_field() }}
  <div class='text-danger'><b>Lỗi!</b> {{$error}}</div>
@endif




