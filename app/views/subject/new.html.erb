@if(Auth::check())
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Thêm học phần</title>
	<style type="text/css">
		@import "bourbon";

		$bezier: cubic-bezier(0.215, 0.610, 0.355, 1.000);
		$time: 300ms;

		$base-font-family: "Avenir Next", "Avenir", "Helvetica Neue", Helvetica, Arial, sans-serif;

		@mixin animated(
		  $time: 300ms,
		  $fillmode: both,
		  $count: 1) {
		  animation-duration: $time;
		  animation-fill-mode: $fillmode;
		  animation-iteration-count: $count;
		}

		body {
		  background-color: #363E4A;
		  font-family: $base-font-family;
		  font-size: 16px;
		  color: #ffffff;
		  line-height: 1.5;
		}

		h1 {
		  font-family: "Texta", $base-font-family;
		  font-weight: 700;
		  text-transform: uppercase;
		  letter-spacing: 4px;
		  text-align: center;
		}

		h2 {
		  font-weight: 400;
		  font-size: 24px;
		  color: rgba(255, 255, 255, .4);
		}

		.container {
		  max-width: 320px;
		  margin: 0 auto;
		  padding: 20px 16px 40px 16px;
		  transform: translateZ(0);
		  text-align: center;
		}

		.form-footer {
		  margin-top: 2em;
		}

		.ui-input {
		  position: relative;
		  padding: 0;
		  border: 0;
		}

		.ui-input input {
		  font-family: $base-font-family;
		  border: 0;
		  background: none;
		  padding: 16px 0 16px 0;
		  font-size: 24px;
		  outline: 0;
		  width: 100%;
		  tap-highlight-color: rgba(0,0,0,0);
		  touch-callout: none;
		}

		.ui-input input + label {
		  position: relative;
		  display: block;
		  padding: 8px 0 8px 0;
		  text-transform: uppercase;
		  font-size: 14px;
		  letter-spacing: .0875em;
		  font-weight: 500;
		  text-align: left;
		  
		  &::before, &::after {
		    position: absolute;
		    top: 0;
		    left: 0;
		    content: "";
		    width: 100%;
		    height: 1px;
  		  }
  
		  &::before {
		    background-color: rgba(255, 255, 255, .2);
		  }
		  
		  &::after {
		    transform: scaleX(0);
		    transform-origin: left;
		    transition: transform $time $bezier;
		    background-color: #6EB1FF;
		    height: 2px;
		  }
  
		  span {
		    position: relative;
		    color: rgba(255, 255, 255, .2);
		    transition: color $time $bezier;
		   
		    &::after {
		      content: attr(data-text);
		      position: absolute;
		      overflow: hidden;
		      left: 0;
		      transform: scaleX(1);
		      white-space: nowrap;
		      color: #fff;
		      
		      background-image: linear-gradient(to right,
		          #4A90E2 50%,
		          rgba(255,255,255,0) 0%);
		      background-position: 100% 50%;
		      background-size: 200%;
		      -webkit-background-clip: text;
		      -webkit-text-fill-color: transparent;
		      
		      backface-visibility: hidden;
		      perspective: 1000;
		      transform: translateZ(0);
		      
		      transition: background-position $time $bezier;
		    }
		  }
		}

		.ui-input input:focus,
		.ui-input input.error,
		.ui-input input:invalid,
		.ui-input input.filled {
		  
		  & + label {
		    
		    &::after {
		      transform: scaleX(1);
		      transform-origin: left;
		    }
		    
		    span::after {
		      //color: #4A90E2;
		      background-image: linear-gradient(to right,
		      rgba(255,255,255,1) 50%,
		      rgba(255,255,255,0) 0%);
		      background-position: 0% 50%;
		    }
		  }
		}

		.ui-input input.filled {
		  color: #ffffff;
		  
		  & + label {
		    
		    &::after {
		      background-color: #ffffff;
		    }
		    
		    span::after {
		      background-image: linear-gradient(to right,
		        #ffffff 50%,
		        rgba(255,255,255,0) 0%);
		      background-position: 0% 50%;
		    }
		  }
		}

		.ui-input input:focus {
		  color: #6EB1FF;
		  
		  & + label {
		    
		    &::after {
		      background-color: #6EB1FF;
		    }
		    
		    span::after {
		      background-image: linear-gradient(to right,
		        #6EB1FF 50%,
		        rgba(255,255,255,0) 0%);
		      background-position: 0% 50%;
		    }
		  }
		}

		.ui-input input.error,
		.ui-input input:invalid {
		  color: #E66161;
		  
		  & + label {
		    
		    &::after {
		      background-color: #E66161;
		    }
		    
		    span::after {
		      background-image: linear-gradient(to right,
		        #E66161 50%,
		        rgba(255,255,255,0) 0%);
		      background-position: 0% 50%;
		    }
		  }
		}

		.btn {
		  border: 0;
		  background-color: #50617A;
		  padding: 18px 30px;
		  font-size: 14px;
		  line-height: 1.5;
		  text-transform: uppercase;
		  letter-spacing: .0875em;
		  font-weight: 500;
		  color: #ffffff;
		  font-family: $base-font-family;
		  border-radius: 100px;
		  outline: 0;
		  transition: background-color $time $bezier,
		              color $time $bezier;
		}

		.btn:focus,.btn:active,
		.btn:hover {
		  background-color: #6EB1FF;
		  color: white;
		}

		.__first, .__second, .__third, .__fourth {
		  animation-name: fadeIn;
		  animation-duration: 180ms;
		  animation-fill-mode: both;
		  animation-iteration-count: 1;
		}

		.__first { animation-delay: 0; }
		.__second { animation-delay: 80ms; }
		.__third { animation-delay: 180ms; }
		.__fourth { animation-delay: 360ms; }

		@keyframes fadeIn {
		  from {
		    opacity: 0;
		    transform: translate3d(0, -25%, 0);
		  }
		  to {
		    opacity: 1;
		    transform: translate3d(0, 0, 0);
		  }
		}
			
	</style>
	<script type="text/javascript">

		var subject = <?php echo  json_encode($subject); ?>

		function checkSubject(){

			var flag = 0;

			var a = document.getElementById("ma_hoc_phan");

			var ma_hoc_phan = String(a.value);

			var b = document.getElementById("ten_hoc_phan");

			var ten_hoc_phan = String(b.value);

			var div = document.getElementById("addSubject");

			var infor = document.getElementById("infor");

			if(ma_hoc_phan == ''){

				flag = 0;
			}
			else{

				for(i = 0; i < subject.length; i++){

					flag = 3;

					if(ma_hoc_phan == subject[i]['ma_hoc_phan'] ){

						flag = 1;

						break;
					}
					else{

						if(ten_hoc_phan == subject[i]['ten_hoc_phan']){

							flag = 2;

							break;
						}
					}
				}
			}

			if(flag == 0){

				div.innerHTML = "";

				infor.innerHTML = "";
			}
			else 
				if(flag == 1){

					infor.innerHTML = "<button class='btn' >Mã đã tồn tại</button>";

					div.innerHTML = "";
				} 
				else 
					if(flag == 2){

						infor.innerHTML = "<button class='btn' >Tên Đã Tồn Tại</button>";

						div.innerHTML = "";
					}
					else 
						if(flag == 3){

							if(ten_hoc_phan != ''){

								div.innerHTML = "<button class='btn' type='submit'>ADD</button>";

								infor.innerHTML = "";
							}else {

								div.innerHTML = "";

								infor.innerHTML = "";
							}
						}
		}


	</script>
</head>
<body>
	<div class="container" >

  		<h2>Thêm học phần</h2>
  		<form class="form" action="insert_subject">
    
    	<fieldset class="form-fieldset ui-input __first">
      		<input type="text" id="ma_hoc_phan" tabindex="0" onkeyup="checkSubject()" name="ma_hoc_phan"/>
      		<label for="ma_hoc_phan">
        		<span data-text="Username">Mã học phần</span>
      		</label>
    	</fieldset>
    
    	<fieldset class="form-fieldset ui-input __second">
      		<input type="text" id="ten_hoc_phan" tabindex="0" onkeyup="checkSubject()" name="ten_hoc_phan"/>
      		<label for="ten_hoc_phan">
        		<span data-text="E-mail Address">Tên học phần</span>
      		</label>
    	</fieldset>

    <div class="form-footer" id="addSubject">
      
    </div>
  </form>
  <div class="form-footer" id="infor">
      
  </div>
</div>
</body>
</html>
@else 
<div class="container" style="">
    <div class="row">
        <div class="col-sm-6 col-md-4 col-md-offset-4" style="margin-top: 100px ">
            <h1 class="text-center login-title" style="text-align: center; color: green">Bạn Chưa Đăng Nhập</h1>
            <p style="text-align: center;"><a href="login_form">Click vào đây để đăng nhập</a></p>
            
        </div>
    </div>
</div>
@endif