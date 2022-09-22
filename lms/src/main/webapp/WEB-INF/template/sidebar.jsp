 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
 
        <!--**********************************
            Sidebar start
        ***********************************-->
        <div class="nk-sidebar">           
            <div class="nk-nav-scroll">
                <ul class="metismenu" id="menu">
                
                
                
                	<!-- 학생용 : 마이페이지 -->
                	
                	
                    <c:if test="${user eq 'student'}">
                    <li>
                        <a class="has-arrow" href="javascript:void(0)" aria-expanded="false">
                            <i class="icon-notebook menu-icon"></i><span class="nav-text">마이페이지</span>
                        </a>
                        <ul aria-expanded="false">
                            <li><a href="./page-login.html">나의정보</a></li>
                            <li><a href="./page-register.html">전체출결현황</a></li>
                        </ul>
                    </li>
                    </c:if>
                    
                    <!-- 관리자페이지 (총관리자) -->
                    
                    
                    <c:if test="${user eq 'employee'}">
                    <li>
                        <a href="/employee/employeeList" aria-expanded="false">
                            <i class="icon-notebook menu-icon"></i><span class="nav-text">관리자페이지</span>
                        </a>
                    </li>
                    </c:if>
                    
                   
                   
                    <!-- 스마트출석부 --> 
                    
                    
                    <li>
                        <a class="has-arrow" href="javascript:void(1)" aria-expanded="false">
                            <i class="icon-graph menu-icon"></i> <span class="nav-text">나의강의실</span>
                        </a>
                        <ul aria-expanded="false">
                            <li><a href="./chart-flot.html">시간표</a></li>
                            <li><a href="./chart-morris.html">강의출결</a></li>
                            <!-- 학생이 수강하는 과목 List 보여주기 / 교수는 수업하는 과목 List 보여주기 -->
                            
                            
                            		<c:forEach var="sl" items="${subjectName}">
                            		<!--  승인된과목의 페이지는... 본의아니게 숫자로 해야할듯 ㅠㅠ -->
                            			<li>
                            				<a style="background: #white;" href="${sl}">${sl}</a>
                            			<!--  
                            			<c:forEach var="sn" items="${subjectNo}">
                            			<a href="${pageContext.request.contextPath}/lecture/"${sn}>${sl}</a>
                            			</c:forEach>
                            			-->
                            			<li>
                            		</c:forEach>
                            	
                           
                            
                            <!-- ${pageContext.request.contextPath}/lecture/getLectureList?No=${No} //강의과제제출교수 -->
                            <li>
                            	<c:if test="${user eq 'professor'}">
                            		
                            	</c:if>
                            </li>
                            <li><a href="${pageContext.request.contextPath}/lecture/getLectureList?No=${No}">강의과제</a></li>
                        </ul>
                    </li>
                    
                    
                    
                    
                    
                    
                    <!-- 학과소개 -->
                    
                    
                    <li class="mega-menu mega-menu-sm">
                        <a class="has-arrow" href="javascript:void(2)" aria-expanded="false">
                            <i class="icon-globe-alt menu-icon"></i><span class="nav-text">학과</span>
                        </a>
                        <ul aria-expanded="false">
                            <li><a href="${pageContext.request.contextPath}/major/majorList">학과소개</a></li>
                        </ul>
                    </li>
                    
                    
                    
                    <!-- 장학 -->
                    
                    
                    <li>
                        <a class="has-arrow" href="javascript:void(3)" aria-expanded="false">
                            <i class="icon-badge menu-icon"></i><span class="nav-text">장학</span>
                        </a>
                        <ul aria-expanded="false">
                            <li><a href="./form-basic.html">장학소개</a></li>
                            <li><a href="./form-validation.html">장학FAQ</a></li>
                        </ul>
                    </li>
                    
                    
                    
                    <!-- 공지 -->
                    
                    
                    <li>
                        <a class="has-arrow" href="javascript:void(4)" aria-expanded="false">
                            <i class="icon-menu menu-icon"></i><span class="nav-text">공지</span>
                        </a>
                        <ul aria-expanded="false">
                            <li><a href="${pageContext.request.contextPath}/notice/noticeList" aria-expanded="false">공지사항</a></li>
                        </ul>
                    </li>

                    
                    
                    <!-- 커뮤니티 -->
                    
                    
                    <li>
                        <a class="has-arrow" href="javascript:void(5)" aria-expanded="false">
                            <i class="icon-note menu-icon"></i><span class="nav-text">소통</span>
                        </a>
                        <ul aria-expanded="false">
                            <li><a href="./form-basic.html">커뮤니티</a></li>
                        </ul>
                    </li>
                    
                    
                    <!-- FAQ -->
                    
                    
                    <li>
                        <a href="/FAQ" aria-expanded="false">
                            <i class="icon-screen-tablet menu-icon"></i><span class="nav-text">FAQ</span>
                        </a>
                    </li>


					<!-- QnA -->


                    <li>
                        <a href="/QnA" aria-expanded="false">
                            <i class="icon-grid menu-icon"></i><span class="nav-text">QnA</span>
                        </a>
                    </li>
                    
                    
                </ul>
            </div>
        </div>
        <!--**********************************
            Sidebar end
        ***********************************-->