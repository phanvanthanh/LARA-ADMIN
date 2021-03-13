@extends('layouts.index')
@section('title', 'Trang chủ')
@section('content')
	<div class="col-12">
		<div class="row">
	        <div class="col-md-6 col-lg-3 grid-margin stretch-card">
	          <div class="card">
	            <div class="card-body">
	              <div class="d-flex align-items-center justify-content-md-center">
	                <i class="mdi mdi-basket icon-lg text-success"></i>
	                <div class="ml-3">
	                  <p class="mb-0">Daily Order</p>
	                  <h6>12569</h6>
	                </div>
	              </div>
	            </div>
	          </div>
	        </div>
	        <div class="col-md-6 col-lg-3 grid-margin stretch-card">
	          <div class="card">
	            <div class="card-body">
	              <div class="d-flex align-items-center justify-content-md-center">
	                <i class="mdi mdi-rocket icon-lg text-warning"></i>
	                <div class="ml-3">
	                  <p class="mb-0">Tasks Completed</p>
	                  <h6>2346</h6>
	                </div>
	              </div>
	            </div>
	          </div>
	        </div>
	        <div class="col-md-6 col-lg-3 grid-margin stretch-card">
	          <div class="card">
	            <div class="card-body">
	              <div class="d-flex align-items-center justify-content-md-center">
	                <i class="mdi mdi-diamond icon-lg text-info"></i>
	                <div class="ml-3">
	                  <p class="mb-0">Monthly Sales</p>
	                  <h6>896546</h6>
	                </div>
	              </div>
	            </div>
	          </div>
	        </div>
	        <div class="col-md-6 col-lg-3 grid-margin stretch-card">
	          <div class="card">
	            <div class="card-body">
	              <div class="d-flex align-items-center justify-content-md-center">
	                <i class="mdi mdi-chart-line-stacked icon-lg text-danger"></i>
	                <div class="ml-3">
	                  <p class="mb-0">Total Revenue</p>
	                  <h6>$ 56000</h6>
	                </div>
	              </div>
	            </div>
	          </div>
	        </div>
	    </div>
	    <div class="row">
	    	<div class="col-6 col-md-6 col-lg-6 grid-margin stretch-card">
              <div class="card bg-info">
                <div class="text-white py-3 px-4">
                  <h6 class="card-title text-white mb-0">Page View</h6>
                  <p>3669.25</p>
                  <div class="chart-container">
                    <canvas class="w-100 h-100" id="dashboard-lineChart-2" height="50"></canvas>
                  </div>
                  <small class="text-white">View Details</small>
                </div>
              </div>
            </div>
            <div class="col-6 col-md-6 col-lg-6 grid-margin stretch-card">
              <div class="card bg-success">
                <div class="text-white py-3 px-4">
                  <h6 class="card-title text-white mb-0">Donations</h6>
                  <p>$56569</p>
                  <div class="chart-container">
                    <canvas class="w-100 h-100" id="dashboard-lineChart-3" height="50"></canvas>
                  </div>
                  <small class="text-white">View Details</small>
                </div>
              </div>
            </div>
	    </div>
	    <div class="row">
	    	<div class="col-md-6 col-lg-6 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h6 class="card-title">Daily Sales</h6>
                  <div class="w-75 mx-auto">
                    <div class="d-flex justify-content-between text-center">
                      <div class="wrapper">
                        <h4>$2256</h4>
                        <small class="text-muted">Totel sales</small>
                      </div>
                      <div class="wrapper">
                        <h4>584</h4>
                        <small class="text-muted">Compaign</small>
                      </div>
                    </div>
                    <div id="dashboard-donut-chart" style="height:250px"></div>
                  </div>
                  <div id="legend" class="donut-legend"></div>
                </div>
              </div>
            </div>
            <div class="col-md-6 col-lg-6 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h6 class="card-title">Total Revenue</h6>
                  <div class="w-75 mx-auto">
                    <div class="d-flex justify-content-between text-center mb-5">
                      <div class="wrapper">
                        <h4>6,256</h4>
                        <small class="text-muted">Totel sales</small>
                      </div>
                      <div class="wrapper">
                        <h4>8569</h4>
                        <small class="text-muted">Open Compaign</small>
                      </div>
                    </div>
                  </div>
                  <div id="morris-line-example" style="height:250px;"></div>
                  <div class="w-75 mx-auto">
                    <div class="d-flex justify-content-between text-center mt-5">
                      <div class="wrapper">
                        <h4>5136</h4>
                        <small class="text-muted">Online Sales</small>
                      </div>
                      <div class="wrapper">
                        <h4>4596</h4>
                        <small class="text-muted">Store Sales</small>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
	    </div>
	</div>


    
    <script type="text/javascript" src="{{ asset('public/js/jquery.min.js') }}"></script>
    <!-- plugins:js -->
	<!-- <script src="{{ asset('public/vendors/js/vendor.bundle.base.js') }}"></script> -->
	<!-- endinject -->
	<!-- Plugin js for this page-->
	<script src="{{ asset('public/vendors/jquery-bar-rating/jquery.barrating.min.js') }}"></script>
	<script src="{{ asset('public/vendors/chart.js/Chart.min.js') }}"></script>
	<script src="{{ asset('public/vendors/raphael/raphael.min.js') }}"></script>
	<script src="{{ asset('public/vendors/morris.js/morris.min.js') }}"></script>
	<script src="{{ asset('public/vendors/jquery-sparkline/jquery.sparkline.min.js') }}"></script>
	<!-- End plugin js for this page-->
	<!-- Custom js for this page-->
	<script src="{{ asset('public/js/dashboard.js') }}"></script>
	<!-- End custom js for this page-->
	<script type="text/javascript">
	jQuery(document).ready(function() {

	  

	  
	});
	</script>
@endsection


