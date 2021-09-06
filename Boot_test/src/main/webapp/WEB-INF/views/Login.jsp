<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link href="./resources/css/login.css" rel="stylesheet" />
<!-- Modal --> 
		<form action="login_go" method="post">
		<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog modal-dialog-centered">
		    <div class="modal-content">
		      <div class="modal-header text-center">
		        <h5 class="modal-title" id="exampleModalLabel">로그인</h5>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		     
		      <div class="modal-body">
		      
	            
	              <div class="form-floating mb-3">
	                <input type="text" class="form-control" id="floatingInput" placeholder="name@example.com" name="user_id">
	                <label for="floatingInput">아이디를 입력해주세요</label>
	              </div>
	              <div class="form-floating mb-3">
	                <input type="password" class="form-control" id="floatingPassword" placeholder="Password" name="user_pw">
	                <label for="floatingPassword">비밀번호를 입력해주세요</label>
	              </div>
	
	              <div class="form-check mb-3">
	                <input class="form-check-input" type="checkbox" value="1" id="rememberPasswordCheck">
	                <label class="form-check-label" for="rememberPasswordCheck">
	                   	비밀번호 저장
	                </label>
	              </div>
	            
		      </div>
		      
		      <div class="modal-footer text-center">
		        	
		        	<button class="btn btn-primary btn-login text-uppercase fw-bold" type="submit">Sign in</button>
		        	
		        	<div class="container">
						<div class="row">
							<div class="col">
								<button class="btn btn-default btn-sm">아이디/비밀번호 찾기</button>
								<button class="btn btn-default btn-sm" onclick="location.href='Sign_up'">회원가입</button>
							</div>
						</div>
					</div>
					
		      </div>
		     
		    </div>
		    
		  </div>
		  
		</div> 
		</form>
<!-- /Modal -->
