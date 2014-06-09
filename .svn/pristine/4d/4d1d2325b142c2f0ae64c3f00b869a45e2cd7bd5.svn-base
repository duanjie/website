<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page import="java.text.SimpleDateFormat,java.util.Date"%>
<%@ page import="java.util.*"%> 
<%@ page import="java.text.*"%> 
 <!-- Content wrapper -->
 
		    <!-- /content wrapper -->
		    
		     <div class="wrapper">
		     
		           <!-- Breadcrumbs line -->
				  <div class="crumbs">
				         <ul id="breadcrumbs" class="breadcrumb"> 
				             
				             <li class="active"><a href="javascript:loadContent('admin/recruitment/list.jhtml')" title=""><spring:message code="admin.recruitment.manager"/></a></li>
				         </ul>
				         <ul class="alt-buttons">
				             <li><a href="#" title=""><i class="icon-signal"></i><span><spring:message code="admin.count"/></span></a></li>
				             <li><a href="#" title=""><i class="icon-comments"></i><span><spring:message code="admin.head.message"/></span></a></li>
				             <li class="dropdown"><a href="#" title="" data-toggle="dropdown"><i class="icon-tasks"></i><span><spring:message code="admin.task"/></span> <strong>(+16)</strong></a>
				             	<ul class="dropdown-menu pull-right">
				                     <li><a href="#" title=""><i class="icon-plus"></i><spring:message code="admin.task.add"/></a></li>
				                     <li><a href="#" title=""><i class="icon-cog"></i><spring:message code="admin.task.site"/></a></li>
				             	</ul>
				             </li>
				         </ul>
				  </div>
				  
			    	<h5 class="widget-name"><i class="icon-th"></i></h5>
		     
                	<ul class="toolbar">
                       <li><a href="javascript:onEdit('admin/recruitment/showEdit.jhtml','checkRow')" title=""><i class="icon-heart"></i><span><spring:message code="admin.edit"/></span></a></li>
                        <li><a href="javascript:loadContent('admin/recruitment/showAdd.jhtml')" title=""><i class="icon-plus"></i><span><spring:message code="admin.add"/></span></a></li>
                      
                         <li><a href="javascript:onDelete('admin/recruitment/delete.jhtml','admin/recruitment/list.jhtml','checkRow')" title=""><i class="icon-cog"></i><span><spring:message code="admin.delete"/></span></a></li>
                    </ul>
                    <div class="table-overflow">
                    	
                    	
                    		<div class="datatable-header">
                    	  <form  id="articleForm" name="articleForm" class="form-horizontal" action="admin/recruitment/list.jhtml" method="post" >
	                    	     <fieldset>
			                    	    <div class="dataTables_filter" id="data-table_filter">
			                    	         <label><span>搜索标题 :</span> 
			                    	         <input type="text" placeholder="搜索:标题..." name="title" value="${title}"/>
			                    	         </label>
			                    	    </div>
			                    	    <div class="dataTables_filter" style="width:400px">
			                    	         <label><span>搜索时间 :</span> </label>
			                    	         <ul class="dates-range">
			                    	         		<li><input type="text" placeholder="搜索:开始时间..." name="startDateP"  readonly value="${startDateP}" id="fromDate3"/></li>
			                                        <li class="sep" style="text-align: center">至</li>
			                                        <li><input type="text"  placeholder="搜索:结束时间..." name="endDateP"  readonly  value="${endDateP}" id="toDate3"/></li>
							                 </ul>
			                    	         
			                    	    </div>
			                    	    <div class="dataTables_filter">
			                    	         <input type="submit" class="btn btn-info" value="  搜索   "/>
			                    	    </div>
			                    	    
			                    	    <div id="data-table_length" class="dataTables_length">
			                    	         <label>
				                    	         <span>每页显示数量:</span> 
				                    	         <div class="selector">
				                    	             <span  >${pageSize}</span>
				                    	             <select size="1" name="pageSize" id="pageSize" style="opacity: 0;">
					                    	             <option value="5" selected="${pageSize}">5</option>
					                    	             <option value="10" selected="${pageSize}">10</option>
					                    	             <option value="30" selected="${pageSize}">30</option>
					                    	             <option value="50" selected="${pageSize}">50</option>
				                    	             </select>
				                    	          </div>
			                    	          </label>
			                    	      </div>
	                    	      </fieldset>
                    	      </form>
                    	</div>
                    	
                    
                        <table  class="table table-striped table-bordered table-checks media-table">
                            <thead>
                                <tr>
                                    <th width="2%"><div class="checker" id="uniform-undefined"><span><input type="checkbox"  name="checkAllRow" class="styled" style="opacity: 0;" ></span></div></th>
                                   										  
                                    <th width="10%"><spring:message code="admin.recruitment.title"/></th>
                                    <th width="10%"><spring:message code="admin.form.end.time"/></th>
                                    <th width="10%"><spring:message code="admin.recruitment.experience"/></th>
                                    <th width="10%"><spring:message code="admin.recruitment.workplace"/></th>
                                    <th width="10%"><spring:message code="admin.recruitment.nature"/></th>
                                    <th width="10%"><spring:message code="admin.notice.create.time"/></th>
                                   
                                 
                                </tr>
                            </thead>
                            <tbody   class="table table-striped table-bordered table-checks media-table">
                              <c:forEach items="${page.content}" var="recruitment" varStatus="status">
	                               <tr id="cls" <c:if test="${status.index % 2 != 0}">class="info" </c:if>>
	                                 	 <td><div class="checker" id="uniform-undefined"><span >
	                                 	 <input type="checkbox" name="checkRow"  class="styled" style="opacity: 0;" value="${recruitment.id}"/></span></div></td>
   									   <fmt:formatDate value="${recruitment.deadline}" var="a" pattern="yyyy-MM-dd " />
	                                   <td><a href="javascript:showInfo('admin/recruitment/info.jhtml','${recruitment.id}')" id="titVal" ><c:out value="${recruitment.title}"/></a></td>
	                                   <td><a href="javascript:showInfo('admin/recruitment/info.jhtml','${recruitment.id}')" id="titVal" ><c:out value="${a}"/></a></td>
	                                   <td><a href="javascript:showInfo('admin/recruitment/info.jhtml','${recruitment.id}')" id="titVal" ><c:out value="${recruitment.experience}"/></a></td>
	                                   <td><a href="javascript:showInfo('admin/recruitment/info.jhtml','${recruitment.id}')" id="titVal" ><c:out value="${recruitment.workplace}"/></a></td>
	                                   <td><a href="javascript:showInfo('admin/recruitment/info.jhtml','${recruitment.id}')" id="titVal" ></a>
	                                   
	                                   <c:choose><c:when test="${recruitment.nature==0}"><spring:message code="admin.recruitment.nature0"/></c:when><c:otherwise> <spring:message code="admin.recruitment.nature1"/></c:otherwise></c:choose></td>
	                                	
	                                 	<fmt:formatDate value="${recruitment.createDate}" var="b" type="both"  pattern="yyyy-MM-dd"/>
	                                   <td><a href="javascript:showInfo('admin/recruitment/info.jhtml',${recruitment.id}')" id="titVal" ><c:out value="${b}"/></a></td>
	                                   
	                                  
	                                  
	                                   
	                                   
	                               </tr>
                              </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <!-- 分页 -->
                    <div class="table-footer">
                        <div class="pagination">
                            <ul>
                                <li><a href="javascript:loadContent('admin/recruitment/list.jhtml?pageNumber=${page.pageNumber-1}')"><spring:message code="admin.pageup"/></a></li>
                               	<c:forEach var="pageNumber" begin="1" end="${page.totalPages}" step="1"> 
	                                <li <c:if test="${pageNumber == page.pageNumber}">class="active"</c:if> >
	                               	 <a href="javascript:loadContent('admin/recruitment/list.jhtml?pageNumber=${pageNumber}')">${pageNumber}</a>
	                                </li>
                               </c:forEach>
                                <li><a href="javascript:loadContent('admin/recruitment/list.jhtml?pageNumber=${page.pageNumber+1}')"><spring:message code="admin.pagedown"/></a></li>
                            </ul>
                        </div>
                    </div>
                </div>

<script type="text/javascript">
	$(document).ready(function(){
		initCheckBoxSelectAll("checkAllRow","checkRow");
		initSearchForm("articleForm");
		var dates = $( "#fromDate3, #toDate3" ).datepicker({
			defaultDate: "+1w",
			changeMonth: false,
			showOtherMonths:true,
			numberOfMonths: 1,
			dateFormat: 'yy-mm-dd',
			onSelect: function( selectedDate ) {
				var option = this.id == "fromDate3" ? "minDate" : "maxDate",
					instance = $( this ).data( "datepicker" ),
					date = $.datepicker.parseDate(
						instance.settings.dateFormat ||
						$.datepicker._defaults.dateFormat,
						selectedDate, instance.settings );
				dates.not( this ).datepicker( "option", option, date );
			}
		});
		
	});
</script>