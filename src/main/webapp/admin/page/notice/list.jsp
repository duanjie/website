<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
 <!-- Content wrapper -->
 
		    <!-- /content wrapper -->
		    
		     <div class="wrapper">
		     
		           <!-- Breadcrumbs line -->
				  <div class="crumbs">
				         <ul id="breadcrumbs" class="breadcrumb"> 
				             
				             <li class="active"><a href="javascript:loadContent('admin/notice/list.jhtml')"> <spring:message code="admin.notice.manager"/></a></li>
				         </ul>
				         <ul class="alt-buttons">
				         </ul>
				  </div>
				  
			    	<h5 class="widget-name"><i class="icon-th"></i></h5>
		     
		     
                	<ul class="toolbar">
                       <li><a href="javascript:onEdit('admin/notice/showEdit.jhtml','checkRow')" title=""><i class="icon-heart"></i><span><spring:message code="admin.edit"/></span></a></li>
                        <li><a href="javascript:loadContent('admin/notice/showAdd.jhtml')" title=""><i class="icon-plus"></i><span><spring:message code="admin.add"/></span></a></li>
                      
                         <li><a href="javascript:onDelete('admin/notice/delete.jhtml','admin/notice/list.jhtml','checkRow')"><i class="icon-cog"></i><span><spring:message code="admin.delete"/></span></a></li>
                    </ul>
                    <div class="table-overflow">
                    
                    	
                    		<div class="datatable-header">
                    	  <form  id="articleForm" name="articleForm" class="form-horizontal" action="admin/notice/list.jhtml" method="post" >
	                    	     <fieldset>
			                    	    <div class="dataTables_filter" id="data-table_filter">
			                    	         <label><span>搜索标题 :</span> 
			                    	         <input type="text" placeholder="搜索:标题..." name="title" value="${title}"/>
			                    	         </label>
			                    	    </div>
			                    	    <div class="dataTables_filter" style="width:400px">
			                    	         <label><span>搜索时间 :</span> </label>
			                    	         <ul class="dates-range">
			                    	             	<li><input type="text" placeholder="搜索:开始时间..." name="startDateP"  readonly value="${startDateP}" id="fromDate4"/></li>
			                                        <li class="sep" style="text-align: center">至</li>
			                                        <li><input type="text"  placeholder="搜索:结束时间..." name="endDateP"  readonly  value="${endDateP}" id="toDate4"/></li>
							                 </ul>
			                    	         
			                    	    </div>
			                    	    <div class="dataTables_filter">
			                    	         <input type="submit" class="btn btn-info" value="  搜索   "/>
			                    	    </div>
			                    	    
			                    	    <div id="data-table_length" class="dataTables_length">
			                    	         <label>
				                    	         <span>每页显示数量:</span> 
				                    	         <div class="selector">
				                    	             <span name="pageSize" >${pageSize}</span>
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
                                   
                                    <th width="10%"><spring:message code="admin.notice.title"/></th>
                                    <th width="10%"><spring:message code="admin.notice.begin.time"/></th>
                                    <th width="10%"><spring:message code="admin.form.end.time"/></th>
                                    <th width="10%"><spring:message code="admin.notice.content"/></th>
                                    <th width="10%"><spring:message code="admin.notice.create.time"/></th>
                                   
                                 
                                </tr>
                            </thead>
                            <tbody   class="table table-striped table-bordered table-checks media-table">
                              <c:forEach items="${page.content}" var="notice" varStatus="status">
	                               <tr id="cls" <c:if test="${status.index % 2 != 0}">class="info" </c:if>>
	                                 	 <td><div class="checker" id="uniform-undefined"><span >
	                                 	 <input type="checkbox" name="checkRow"  class="styled" style="opacity: 0;" value="${notice.id}"/></span></div></td>
   									   <fmt:formatDate value="${notice.begin_time}" var="c" pattern="yyyy-MM-dd " />
   									   <fmt:formatDate value="${notice.end_time}" var="a" pattern="yyyy-MM-dd " />
	                                   <td><a href="javascript:showInfo('admin/notice/info.jhtml','${notice.id}')" id="titVal" ><c:out value="${notice.title}"/></a></td>
	                                   <td><a href="javascript:showInfo('admin/notice/info.jhtml','${notice.id}')" id="titVal" ><c:out value="${c}"/></a></td>
	                                   <td><a href="javascript:showInfo('admin/notice/info.jhtml','${notice.id}')" id="titVal" ><c:out value="${a}"/></a></td>
	                                   <td><a href="javascript:showInfo('admin/notice/info.jhtml','${notice.id}')" id="titVal" ><c:out value="${notice.content}"/></a></td>                    	
	                                 	<fmt:formatDate value="${notice.createDate}" var="b" type="both"  pattern="yyyy-MM-dd"/>
	                                   <td><a href="javascript:showInfo('admin/notice/info.jhtml','${notice.id}')" id="titVal" ><c:out value="${b}"/></a></td>
	                               </tr>
                              </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <!-- 分页 -->
                    <div class="table-footer">
                        <div class="pagination">
                            <ul>
                                <li><a href="javascript:loadContent('admin/notice/list.jhtml?pageNumber=${page.pageNumber-1}')"><spring:message code="admin.pageup"/></a></li>
                               	<c:forEach var="pageNumber" begin="1" end="${page.totalPages}" step="1"> 
	                                <li <c:if test="${pageNumber == page.pageNumber}">class="active"</c:if> >
	                               	 <a href="javascript:loadContent('admin/notice/list.jhtml?pageNumber=${pageNumber}')">${pageNumber}</a>
	                                </li>
                               </c:forEach>
                                <li><a href="javascript:loadContent('admin/notice/list.jhtml?pageNumber=${page.pageNumber+1}')"><spring:message code="admin.pagedown"/></a></li>
                            </ul>
                        </div>
                    </div>
                </div>

<script type="text/javascript">
	$(document).ready(function(){
		initCheckBoxSelectAll("checkAllRow","checkRow");
		initSearchForm("articleForm");
		var dates = $( "#fromDate4, #toDate4" ).datepicker({
			defaultDate: "+1w",
			changeMonth: false,
			showOtherMonths:true,
			numberOfMonths: 1,
			dateFormat: 'yy-mm-dd',
			onSelect: function( selectedDate ) {
				var option = this.id == "fromDate4" ? "minDate" : "maxDate",
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