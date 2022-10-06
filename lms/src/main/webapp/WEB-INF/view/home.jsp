<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!-- header.jsp -->

<c:import url="/WEB-INF/template/header.jsp"></c:import>

<!-- sidebar.jsp -->

<c:import url="/WEB-INF/template/sidebar.jsp"></c:import>




        <!--**********************************
            Content body start
        ***********************************-->
        <div class="content-body">

            <div class="container-fluid mt-3">
                <div class="row">
                        <div class="col-lg-6 col-md-12">
                            <div class="card">
                            <div class="card-body" style="min-height:450px;">
                                <h4 class="card-title">공지사항</h4>
                                <div class="table-responsive">
                                    <table class="table header-border table-hover verticle-middle">
                                        <thead>
                                            <tr>
                                                <th scope="col">공지제목</th>
                                                <th scope="col">작성일</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        	<c:forEach var="n" items="${noticeListTop}">
                                            <tr>
                                                <td>
                                                	<a href="${pageContext.request.contextPath}/notice/noticeOne?noticeNo=${n.noticeNo}">
                                                		${n.noticeTitle}
                                                	</a>
                                                </td>
                                                <td>${n.createDate}</td>
                                            </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            </div>
                            
                        </div>    
                        <div class="col-lg-3 col-md-6">
                            <div class="card card-widget">
                            	<c:if test="${user eq 'student'}">
	                                <div class="card-body" style="min-height:450px;">
	                                    <h5 class="text-muted">수업진행률</h5>
	                                    <h2 class="mt-4">5680명</h2>
	                                    <span>Total Revenue</span>
	                                    <div class="mt-4">
	                                        <h4>30</h4>
	                                        <h6>Online Order <span class="pull-right">30%</span></h6>
	                                        <div class="progress mb-3" style="height: 7px">
	                                            <div class="progress-bar bg-primary" style="width: 30%;" role="progressbar"><span class="sr-only">30% Order</span>
	                                            </div>
	                                        </div>
	                                    </div>
	                                    <div class="mt-4">
	                                        <h4>50</h4>
	                                        <h6 class="m-t-10 text-muted">Offline Order <span class="pull-right">80%</span></h6>
	                                        <div class="progress mb-3" style="height: 7px">
	                                            <div class="progress-bar bg-success" style="width: 80%;" role="progressbar"><span class="sr-only">50% Order</span>
	                                            </div>
	                                        </div>
	                                    </div>
	                                    <div class="mt-4">
	                                        <h4>20</h4>
	                                        <h6 class="m-t-10 text-muted">Cash On Develery <span class="pull-right">20%</span></h6>
	                                        <div class="progress mb-3" style="height: 7px">
	                                            <div class="progress-bar bg-warning" style="width: 20%;" role="progressbar"><span class="sr-only">20% Order</span>
	                                            </div>
	                                        </div>
	                                    </div>
	                                </div>
                                </c:if>
                                
                            	<c:if test="${user eq 'professor'}">
	                                <div class="card-body" style="min-height:450px;">
	                                    <h5 class="text-muted">강좌결석률</h5>
	                                    <h2 class="mt-4">5680명</h2>
	                                    <span>Total Revenue</span>
	                                    <div class="mt-4">
	                                        <h4>30</h4>
	                                        <h6>Online Order <span class="pull-right">30%</span></h6>
	                                        <div class="progress mb-3" style="height: 7px">
	                                            <div class="progress-bar bg-primary" style="width: 30%;" role="progressbar"><span class="sr-only">30% Order</span>
	                                            </div>
	                                        </div>
	                                    </div>
	                                    <div class="mt-4">
	                                        <h4>50</h4>
	                                        <h6 class="m-t-10 text-muted">Offline Order <span class="pull-right">50%</span></h6>
	                                        <div class="progress mb-3" style="height: 7px">
	                                            <div class="progress-bar bg-success" style="width: 50%;" role="progressbar"><span class="sr-only">50% Order</span>
	                                            </div>
	                                        </div>
	                                    </div>
	                                    <div class="mt-4">
	                                        <h4>20</h4>
	                                        <h6 class="m-t-10 text-muted">Cash On Develery <span class="pull-right">20%</span></h6>
	                                        <div class="progress mb-3" style="height: 7px">
	                                            <div class="progress-bar bg-warning" style="width: 20%;" role="progressbar"><span class="sr-only">20% Order</span>
	                                            </div>
	                                        </div>
	                                    </div>
	                                </div>
                                </c:if>
                                
                            	<c:if test="${user eq 'employee'}">
	                                <div class="card-body" style="min-height:450px;">
	                                    <h5 class="text-muted">전체 학생,직원 수</h5>
	                                    <h2 class="mt-4">총 ${total}명</h2>
	                                    <span>직원수, 교수, 학생</span>
	                                    <div class="mt-4">
	                                        <h4>${employeeCount}명</h4>
	                                        <h6>직원수<span class="pull-right">${employeePer}%</span></h6>
	                                        <div class="progress mb-3" style="height: 7px">
	                                            <div class="progress-bar bg-primary" style="width: ${employeePer}%;" role="progressbar"><span class="sr-only">30% Order</span>
	                                            </div>
	                                        </div>
	                                    </div>
	                                    <div class="mt-4">
	                                        <h4>${professorCount}명</h4>
	                                        <h6 class="m-t-10 text-muted">교수수<span class="pull-right">${professorPer}%</span></h6>
	                                        <div class="progress mb-3" style="height: 7px">
	                                            <div class="progress-bar bg-success" style="width: ${professorPer}%;" role="progressbar"><span class="sr-only">50% Order</span>
	                                            </div>
	                                        </div>
	                                    </div>
	                                    <div class="mt-4">
	                                        <h4>${studentCount}명</h4>
	                                        <h6 class="m-t-10 text-muted">학생수<span class="pull-right">${studentPer}%</span></h6>
	                                        <div class="progress mb-3" style="height: 7px">
	                                            <div class="progress-bar bg-warning" style="width: ${studentPer}%;" role="progressbar"><span class="sr-only">20% Order</span>
	                                            </div>
	                                        </div>
	                                    </div>
	                                </div>
                                </c:if>
                            </div>
                            
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <div class="card">
                                <div class="card-body px-0" style="min-height:450px;">
                                    <h4 class="card-title px-4 mb-3">Todo</h4>
                                    <div class="todo-list">
                                        <div class="tdl-holder">
                                            <div class="tdl-content">
                                                <ul id="todo_list">
                                                    <li><label><input type="checkbox"><i></i><span>라떼LMS 예쁘게 봐주세요!</span><a href='#' class="ti-trash"></a></label></li>
                                                    <li><label><input type="checkbox" checked><i></i><span>약속!</span><a href='#' class="ti-trash"></a></label></li>
                                                </ul>
                                            </div>
                                            <div class="px-4">
                                                <input type="text" class="tdl-new form-control" placeholder="이곳에 Todo 작성하기">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                
                <div class="row">
                    <div class="col-lg-3 col-sm-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="text-center">
                                    <img src="./images/users/8.jpg" class="rounded-circle" alt="">
                                    <h5 class="mt-3 mb-1">Ana Liem</h5>
                                    <p class="m-0">Senior Manager</p>
                                    <!-- <a href="javascript:void()" class="btn btn-sm btn-warning">Send Message</a> -->
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="text-center">
                                    <img src="./images/users/5.jpg" class="rounded-circle" alt="">
                                    <h5 class="mt-3 mb-1">John Abraham</h5>
                                    <p class="m-0">Store Manager</p>
                                    <!-- <a href="javascript:void()" class="btn btn-sm btn-warning">Send Message</a> -->
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="text-center">
                                    <img src="./images/users/7.jpg" class="rounded-circle" alt="">
                                    <h5 class="mt-3 mb-1">John Doe</h5>
                                    <p class="m-0">Sales Man</p>
                                    <!-- <a href="javascript:void()" class="btn btn-sm btn-warning">Send Message</a> -->
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="text-center">
                                    <img src="./images/users/1.jpg" class="rounded-circle" alt="">
                                    <h5 class="mt-3 mb-1">Mehedi Titas</h5>
                                    <p class="m-0">Online Marketer</p>
                                    <!-- <a href="javascript:void()" class="btn btn-sm btn-warning">Send Message</a> -->
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="active-member">
                                    <div class="table-responsive">
                                        <table class="table table-xs mb-0">
                                            <thead>
                                                <tr>
                                                    <th>Customers</th>
                                                    <th>Product</th>
                                                    <th>Country</th>
                                                    <th>Status</th>
                                                    <th>Payment Method</th>
                                                    <th>Activity</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td><img src="./images/avatar/1.jpg" class=" rounded-circle mr-3" alt="">Sarah Smith</td>
                                                    <td>iPhone X</td>
                                                    <td>
                                                        <span>United States</span>
                                                    </td>
                                                    <td>
                                                        <div>
                                                            <div class="progress" style="height: 6px">
                                                                <div class="progress-bar bg-success" style="width: 50%"></div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td><i class="fa fa-circle-o text-success  mr-2"></i> Paid</td>
                                                    <td>
                                                        <span>Last Login</span>
                                                        <span class="m-0 pl-3">10 sec ago</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><img src="./images/avatar/2.jpg" class=" rounded-circle mr-3" alt="">Walter R.</td>
                                                    <td>Pixel 2</td>
                                                    <td><span>Canada</span></td>
                                                    <td>
                                                        <div>
                                                            <div class="progress" style="height: 6px">
                                                                <div class="progress-bar bg-success" style="width: 50%"></div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td><i class="fa fa-circle-o text-success  mr-2"></i> Paid</td>
                                                    <td>
                                                        <span>Last Login</span>
                                                        <span class="m-0 pl-3">50 sec ago</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><img src="./images/avatar/3.jpg" class=" rounded-circle mr-3" alt="">Andrew D.</td>
                                                    <td>OnePlus</td>
                                                    <td><span>Germany</span></td>
                                                    <td>
                                                        <div>
                                                            <div class="progress" style="height: 6px">
                                                                <div class="progress-bar bg-warning" style="width: 50%"></div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td><i class="fa fa-circle-o text-warning  mr-2"></i> Pending</td>
                                                    <td>
                                                        <span>Last Login</span>
                                                        <span class="m-0 pl-3">10 sec ago</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><img src="./images/avatar/6.jpg" class=" rounded-circle mr-3" alt=""> Megan S.</td>
                                                    <td>Galaxy</td>
                                                    <td><span>Japan</span></td>
                                                    <td>
                                                        <div>
                                                            <div class="progress" style="height: 6px">
                                                                <div class="progress-bar bg-success" style="width: 50%"></div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td><i class="fa fa-circle-o text-success  mr-2"></i> Paid</td>
                                                    <td>
                                                        <span>Last Login</span>
                                                        <span class="m-0 pl-3">10 sec ago</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><img src="./images/avatar/4.jpg" class=" rounded-circle mr-3" alt=""> Doris R.</td>
                                                    <td>Moto Z2</td>
                                                    <td><span>England</span></td>
                                                    <td>
                                                        <div>
                                                            <div class="progress" style="height: 6px">
                                                                <div class="progress-bar bg-success" style="width: 50%"></div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td><i class="fa fa-circle-o text-success  mr-2"></i> Paid</td>
                                                    <td>
                                                        <span>Last Login</span>
                                                        <span class="m-0 pl-3">10 sec ago</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><img src="./images/avatar/5.jpg" class=" rounded-circle mr-3" alt="">Elizabeth W.</td>
                                                    <td>Notebook Asus</td>
                                                    <td><span>China</span></td>
                                                    <td>
                                                        <div>
                                                            <div class="progress" style="height: 6px">
                                                                <div class="progress-bar bg-warning" style="width: 50%"></div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td><i class="fa fa-circle-o text-warning  mr-2"></i> Pending</td>
                                                    <td>
                                                        <span>Last Login</span>
                                                        <span class="m-0 pl-3">10 sec ago</span>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>                        
                    </div>
                </div>
            <!-- #/ container -->
        </div>
        <!--**********************************
            Content body end
        ***********************************-->





<!-- footer -->

<c:import url="/WEB-INF/template/footer.jsp"></c:import>