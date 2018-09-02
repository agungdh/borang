@extends('template.template')

@section('nav')
  @include('fakultas.nav')
@endsection

@section('content')
<div class="row">
  <div class="col-md-12">
    <div class="tile">
      <h3 class="tile-title">Ubah Fakultas</h3>
      <div class="tile-body">
        <form method="post" action="{{ action('FakultasController@update', $fakultas->id_fakultas) }}">
          @method('put')
          @csrf

          <div class="form-group">
            <label class="control-label">Nama Fakultas</label>
            <input class="form-control" type="text" required placeholder="Masukan Nama Fakultas" name="data[nama_fakultas]" value="{{ $fakultas->nama_fakultas }}">
          </div>

          </div>
          <div class="tile-footer">
            <button id="simpan" class="btn btn-primary" type="button"><i class="fa fa-fw fa-lg fa-check-circle"></i>Simpan</button>
            &nbsp;&nbsp;&nbsp;
            <a class="btn btn-secondary" href="{{ action('FakultasController@index') }}"><i class="fa fa-fw fa-lg fa-times-circle"></i>Batal</a> <input type="submit" style="visibility: hidden;">
          </div>
        </form>
    </div>
  </div>
</div>
@endsection

@section('js')
<script type="text/javascript">
$('#simpan').click(function(){
  $("input[type='submit']").click();
});

$('.select2').select2();
</script>
@endsection