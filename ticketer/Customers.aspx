<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customers.aspx.cs" Inherits="ticketer.Customers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/Main.css" rel="stylesheet" />
    <title></title>

      <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>
    <%--  <link rel="stylesheet" href="/resources/demos/style.css"/>--%>
    <link href="Content/MainSheet.css" rel="stylesheet" />
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

        <style type="text/css">
        .auto-style2 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            background-color: #555;
            color: white;
            padding: 16px 20px;
            cursor: pointer;
            opacity: 0.8; /*position: fixed;
    bottom: 23px;
    right: 28px;*/;
            width: 138px;
        }



              #JobGrid 
              {
                font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
                border-collapse: collapse;
                width: 100%;
              }

            #customerGrid td, #customerGrid th
            {
              border: 1px solid #ddd;
              padding: 8px;
            }

            #customerGrid tr:nth-child(even){background-color: #f2f2f2;}

            #customerGrid tr:hover {background-color: #ddd;}

            #customerGrid th {
              padding-top: 12px;
              padding-bottom: 12px;
              text-align: left;
              background-color: #4CAF50;
              color: white;
            }

    </style>

</head>

<body>

    <div class="topnav" id="myTopnav">
  <a href="main.aspx">Main</a>
  <a href="job.aspx">New Job</a>
  <a href="customers.aspx" class="active">Customer List</a>
  <div class="dropdown">
    <button class="dropbtn">Dropdown 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="#">Link 1</a>
      <a href="#">Link 2</a>
      <a href="#">Link 3</a>
    </div>
  </div> 
  <a href="login.aspx">LogOut</a>
  <a href="javascript:void(0);" style="font-size:15px;" class="icon" onclick="myFunction()">&#9776;</a>
</div>

    <form id="form1" runat="server">
        <br />
        <asp:GridView ID="customerGrid" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="cName" HeaderText="Customer Name" SortExpression="cName" />
                <asp:BoundField DataField="cNumber" HeaderText="Customer Number" SortExpression="cNumber" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBCS %>" SelectCommand="SELECT [cName], [cNumber] FROM [customers]"></asp:SqlDataSource>
    
   
    </form>
    <p>

        <div class="form-popup" id="myForm">
  <form action="/action_page.php" class="form-container">
    <h1>New Customer</h1>

    <label for="Name"><b>Customer Name</b></label>
    <input id="newCustomer" type="text" placeholder="Cutomer Name" name="Name" required>

    <label for="Number"><b>Customer Number</b></label>
    <input id="newNumber" type="text" placeholder="Customer Number" name="Number" required>
      <label id="newUserMessage" hidden="hidden"><b>Customer Name or Number cannot be blank</b></label>
    <button type="button" class="btn" onclick="createCustomer()">Submit</button>
    <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
  </form>
</div>   
                <input class="auto-style2" onclick="openForm()" value="New Customer"/></p>
</body>

     <script>


            function openForm()
            {
                document.getElementById("myForm").style.display = "block";
            }

            function createCustomer()
            {
                
                var customerName = document.getElementById("newCustomer").value;
                var customerNumber = document.getElementById("newNumber").value;
                var request = new XMLHttpRequest();

                if (customerName == "" || customerNumber == "")
                {
                    document.getElementById("newUserMessage").style.color = "red";
                    document.getElementById("newUserMessage").style.display = "block";
                }
                else
                {
                    var apiString = "http://localhost:54517/api/Job/newCustomer?cName=" + customerName + "&cNumber=" + customerNumber;
                    request.open("post", apiString, false);
                    request.send();
                    document.getElementById("myForm").style.display = "none";

                    var request = new XMLHttpRequest();
                    request.open("get", "api/Job/CustomerList", false);
                    request.send();
 
                    //console.log(request.responseText);
                    var customerList = JSON.parse(request.responseText);


            
                    $(function ()
                    {
                        var availableTags = customerList;
                        $("#customerTextbox").autocomplete(
                         {
                            source: availableTags
                         });
                    });

                }
            }

            function closeForm()
            {
                document.getElementById("myForm").style.display = "none";

         }

        </script>
</html>
