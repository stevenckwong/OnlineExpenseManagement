<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Online Expense Management - Main</title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
</head>
<body>
    <%
    	String username = request.getParameter("username");
    %>
    <div class="container center-block">
        <h4>Welcome back <%=username %></h4>
        <h4><small>Quick Expense Entry</small></h4>
        <div class="col-md-4">
            <!-- LOADER IMAGE -->
 			<div id="loading">
            	<img src="img/loading.gif" />
            </div>
            <div id="results">
            	<h5>Entry Created!</h5>
            </div>    
 
            <form id="newentryform">
            	<div class="form-group">
                    <div class="input-group">
                        <div class="input-group-addon">Date</div>
                        <input type="text" class="datepicker" id="newentrydate" name="newentrydate">
                    </div>
                </div>
            	<div class="form-group">
                    <div class="input-group">
                        <div class="input-group-addon">Type</div>
                        <select id="newentrytype" name="newentrytype">
                        	<option>Public Transport</option>
                        	<option>Food</option>
                        	<option>Hotel</option>
                        	<option>Others</option>
                        </select>
                    </div>
                </div>
            	<div class="form-group">
                    <div class="input-group">
                        <div class="input-group-addon">Amount</div>
                        <input type="number" class="input-field" value="0.00" min="0" step="0.50" data-number-to-fixed="2" id="newentryamount" name="newentryamount">
                    </div>
                </div>
            	<div class="form-group">
                    <div class="input-group">
                    	<div class="input-group-addon">Description</div>
                        <textarea id="newentrydesc" name="newentrydesc" class="materialize-textarea"></textarea>
                    </div>
                </div>
                <button type="submit" class="btn btn-default">Submit</button>
            </form>
        </div>
    </div>
    
    
    
        
	<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
	<script src="js/app.js"></script>
</body>
</html>