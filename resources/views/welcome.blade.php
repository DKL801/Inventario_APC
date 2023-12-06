@extends('include.master')


@section('title','Inventario | Panel')


@section('page-title','Panel de Control')


@section('content')
            <info-box></info-box>

@endsection


@push('script')

<script type="text/javascript" src="{{ url('public/js/dashboard.js') }}"></script>

@endpush