<%--
  Created by IntelliJ IDEA.
  User: GRAM
  Date: 2021-11-06
  Time: 오후 2:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <%@ include file="../include/head.jsp" %>
</head>
<body class="">

<!-- Wrapper -->
<div id="wrapper">

    <!-- Main -->
    <div id="main">
        <div class="inner">

            <!-- Header -->
            <%@ include file="../include/header.jsp" %>

            <!-- Banner -->

            <script type="text/javascript">
                $(document).ready(function () {
                    var isId = true;
                    // 아이디 중복검사
                    /*
                    $("#userid").keyup(function () {
                        var ckid = $("#userid").val();
                        if(ckid.length < 6 || ckid.length > 16) {
                            $("#idresult").text("아이디는 6자이상 16자이하입니다.").removeClass('text-primary').removeClass('text-danger').addClass('text-dark');
                            isId = false;
                        } else {
                            $.ajax({
                                url: '


                    ${root}/user',
	                	data: {'act': 'idcheck', 'ckid': ckid},
	                  	type: 'GET',
	                  	dataType: 'xml',
	                  	success: function (response) {
	                  		console.log(response);
	                    	var cnt = parseInt($(response).find("idcount").text());
	                    	if(cnt == 0) {
	                    		$("#idresult").text(ckid + "는 사용가능합니다.").removeClass('text-dark').removeClass('text-danger').addClass('text-primary');
	                    		isId = true;
	                    	} else {
	                    		$("#idresult").text(ckid + "는 사용할 수 없습니다.").removeClass('text-dark').removeClass('text-primary').addClass('text-danger');
	                    		isId = false;
	                    	}
	                  	}
					});
        		}
			});
        	*/

                    // 회원가입
                    $("#registerBtn").click(function () {
                        if (!$("#userName").val()) {
                            alert("Put Name!!!");
                            return;
                        } else if (!isId) {
                            alert("Put Id!!!");
                            return;
                        } else if (!$("#userPwd").val()) {
                            alert("Put Password!!!");
                            return;
                        } else if ($("#userPwd").val() != $("#pwdcheck").val()) {
                            alert("Check Password!!!");
                            return;
                        } else {
                            //$("#email").val($("#emailid").val() + "@" + $("#emaildomain").val());
                            $("#memberform").attr("action", "${root}/account/join").submit();
                        }
                    });

                    // $('#zipcode').focusin(function () {
                    //     $('#zipModal').modal();
                    // });
                });
            </script>

            <div class="container text-center mt-3">
                <div class="col-lg-8 mx-auto">
                    <h2 class="p-3 mb-3 shadow bg-light">
                        <mark class="orange">Join</mark>
                    </h2>
                    <form id="memberform" class="text-left mb-3" method="post" action="">
                        <%--                        <div class="form-group">--%>
                        <%--                            <label for="username">이름</label>--%>
                        <%--                            <input type="text" class="form-control" id="userName" name="userName" placeholder="이름입력...">--%>
                        <%--                        </div>--%>
                        <h3> Name </h3>
                        <div class="mem_member_name" style="width: 40%; margin-bottom: 25px;">
                            <input type="text" name="userName" id="userName" value="" placeholder="UserName">
                        </div>
                        <h3> ID </h3>
                        <div class="mem_member_id" style="width: 40%; margin-bottom: 25px;">
                            <input type="text" name="userId" id="userId" value="" placeholder="ID (No duplication)">
                        </div>
                        <h3> Password </h3>
                        <div class="mem_member_pwd" style="width: 40%; margin-bottom: 25px;">
                            <input type="password" name="userPwd" id="userPwd" value="" placeholder="Password">
                        </div>
                        <h3> Password Check </h3>
                        <div class="mem_member_pwd_ck" style="width: 40%; margin-bottom: 25px;">
                            <input type="password" name="pwdcheck" id="pwdcheck" value="" placeholder="Password Check">
                        </div>

                        <%--                        <div class="form-group">--%>
                        <%--                            <label for="emailid">이메일</label><br>--%>
                        <%--                            <div id="email" class="custom-control-inline">--%>
                        <%--                                <input type="text" class="form-control" id="emailid" name="emailid" placeholder="이메일아이디입력..."--%>
                        <%--                                       size="25"> @--%>
                        <%--                                <select class="form-control" id="emaildomain" name="emaildomain">--%>
                        <%--                                    <option value="naver.com">네이버</option>--%>
                        <%--                                    <option value="kakao.com">카카오</option>--%>
                        <%--                                    <option value="google.com">구글</option>--%>
                        <%--                                </select>--%>
                        <%--                            </div>--%>
                        <%--                        </div>--%>
                        <!--
                        <div class="form-group">
                            <label for="tel1">전화번호</label>
                            <div id="tel" class="custom-control-inline">
                                <select class="form-control" id="tel1" name="tel1">
                                    <option value="010">010</option>
                                    <option value="02">02</option>
                                    <option value="031">031</option>
                                    <option value="032">032</option>
                                    <option value="041">041</option>
                                    <option value="051">051</option>
                                    <option value="061">061</option>
                                </select> _
                                <input type="text" class="form-control" id="tel2" name="tel2" placeholder=""> _
                                <input type="text" class="form-control" id="tel3" name="tel3" placeholder="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="zipcode">주소</label><br>
                            <div id="addressdiv" class="custom-control-inline">
                                <input type="text" class="form-control" id="zipcode" name="zipcode" placeholder="우편번호" size="7"
                                    maxlength="5" readonly="readonly">
                            </div>
                            <input type="text" class="form-control" id="address" name="address" placeholder="">
                            <input type="text" class="form-control" id="address_detail" name="address_detail" placeholder="">
                        </div>
                        -->
                        <div class="form-group text-center">
                            <button type="button" id="registerBtn" class="btn btn-outline-primary">Join</button>
                            <button type="reset" class="btn btn-outline-danger">Clear</button>
                        </div>
                    </form>
                </div>
            </div>
            <!-- 우편번호 검색 모달 -->
            <!--
            <div id="zipModal" class="modal fade" role="dialog">
                <h5 class="modal-title" id="myModalLabel">우편번호검색</h5>
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header text-center">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                        </div>
                        <div class="modal-body text-center">
                            <form id="zip_codeForm">
                                <div align="center">
                                    <label>도로명 주소검색</label>
                                </div>
                                <div class="input-group">
                                    <input type="text" class="form-control" id="doro" name="doro"
                                        placeholder="검색 할 도로명 입력(예: 대왕판교로, 학하서로)">
                                    <span class="input-group-btn">
                                        <input type="submit" class="btn btn-warning" value="검색" id="searchBtn">
                                    </span>
                                </div>
                            </form>
                            <div style="width:100%; height:200px; overflow:auto">
                                <table class="table text-center">
                                    <thead>
                                        <tr>
                                            <th style="width:150px;">우편번호</th>
                                            <th style="width:600px;">주소</th>
                                        </tr>
                                    </thead>
                                    <tbody id="zip_codeList"></tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            -->

            <!-- Section -->

        </div>
    </div>

    <!-- Sidebar -->
    <%@ include file="../include/sidebar.jsp" %>

</div>

</body>

</html>

