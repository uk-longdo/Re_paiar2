<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html> 
<html lang="ko"> 
<head> 
<meta charset="utf-8" >
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>창원 옷수선</title>
<jsp:include page="Boot.jsp"></jsp:include>
<body>
<jsp:include page="Top.jsp"></jsp:include>
<jsp:include page="Login.jsp"></jsp:include>
<jsp:include page="Header.jsp"></jsp:include>

<section class="py-5">
<div class="container px-5 my-5" >
    <form action="user_sign" id="contactForm"  method="post">
        <div class="mb-3" >
            <label class="form-label" for="아이디">아이디</label>
            <input class="form-control" id="아이디" name="user_id" type="text" placeholder="아이디를 입력 해주세요" data-sb-validations="required" />
            <div class="invalid-feedback" data-sb-feedback="아이디:required">필수 정보 입니다.</div>
        </div>
        
        <div class="mb-3">
            <label class="form-label" for="newField2">비밀번호</label>
            <input class="form-control" id="newField2" name="user_pw" type="password" placeholder="비밀번호를 입력해주세요." data-sb-validations="required" />
            <div class="invalid-feedback" data-sb-feedback="newField2:required">필수 정보 입니다.</div>
            
        </div>
        <div class="mb-3">
            <label class="form-label" for="newField4">이름</label>
            <input class="form-control" id="newField4" name="user_name" type="text" placeholder="이름을 입력 해주세요" data-sb-validations="required" />
            <div class="invalid-feedback" data-sb-feedback="newField4:required">필수 정보 입니다.</div>
        </div>
        <div class="mb-3">
            <label class="form-label" for="member_post">우편번호</label>
            <input class="form-control" id="member_post" name="user_zipcode" type="text" placeholder="New Field 5" data-sb-validations="required" onclick="test()"/>
            <div class="invalid-feedback" data-sb-feedback="newField5:required">필수 정보 입니다.</div>
        </div>
        <div class="mb-3">
            <label class="form-label" for="member_addr">주소</label>
            <input class="form-control" id="member_addr" name="user_addr" type="text" placeholder="New Field 6" data-sb-validations="required" />
            <div class="invalid-feedback" data-sb-feedback="newField6:required">필수 정보 입니다.</div>
        </div>
        <div class="mb-3">
            <label class="form-label" for="newField7">상세 정보</label>
            <input class="form-control" id="newField7" name="user_addr_dtr" type="text" placeholder="New Field 7" data-sb-validations="required" />
            <div class="invalid-feedback" data-sb-feedback="newField7:required">New Field 7 is required.</div>
        </div>
        <div class="mb-3">
            <label class="form-label" for="newField8">전화번호</label>
            <input class="form-control" id="newField8" name="user_phone" type="tel" placeholder="New Field 8" data-sb-validations="required" />
            <div class="invalid-feedback" data-sb-feedback="newField8:required">New Field 8 is required.</div>
        </div>
        <div class="mb-3">
            <label class="form-label" for="newField9">이메일</label>
            <input class="form-control" id="newField9" name="user_email" type="email" placeholder="New Field 5" data-sb-validations="required" />
            <div class="invalid-feedback" data-sb-feedback="newField5:required">필수 정보 입니다.</div>
        </div>
        
        <div class="mb-3">
            <label class="form-label" for="newField9">생년월일</label>
            <input class="form-control" id="newField9" name="user_birthday" type="date" placeholder="New Field 5" data-sb-validations="required" />
            <div class="invalid-feedback" data-sb-feedback="newField5:required">필수 정보 입니다.</div>
        </div>
        
        <div class="mb-3">
            <label class="form-label d-block">성별</label>
            
            <div class="form-check form-check-inline">
                <input class="form-check-input" id="optionB" type="checkbox" value="m" name="user_gender"  />
                <label class="form-check-label" for="optionB">남자</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" id="optionC" type="checkbox" value="f" name="user_gender"  />
                <label class="form-check-label" for="optionC">여자</label>
            </div>
            
        <div class="d-none" id="submitSuccessMessage">
            <div class="text-center mb-3">
                <div class="fw-bolder">Form submission successful!</div>
                <p>To activate this form, sign up at</p>
                <a href="https://startbootstrap.com/solution/contact-forms">https://startbootstrap.com/solution/contact-forms</a>
            </div>
        </div>
            
        <div class="d-none" id="submitErrorMessage">
            <div class="text-center text-danger mb-3">Error sending message!</div>
        </div>
        <div class="d-grid">
            
            <input type="submit" value="회원가입">
        </div>
       </div> 
    </form>
</div>

</section>

<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
<jsp:include page="Footer.jsp"></jsp:include> 
<script>
function test(){
	new daum.Postcode({
        oncomplete: function(data) {
        	
        	console.log(data);
        	
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var jibunAddr = data.jibunAddress; // 지번 주소 변수
            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('member_post').value = data.zonecode;
            if(roadAddr !== ''){
                document.getElementById("member_addr").value = roadAddr;
            } 
            else if(jibunAddr !== ''){
                document.getElementById("member_addr").value = jibunAddr;
            }
        }
    }).open();
}
</script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</body>
</html>