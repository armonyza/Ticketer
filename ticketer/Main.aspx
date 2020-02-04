<%@ Page EnableEventValidation="False" Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="ticketer.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>    
    <link href="Content/Main.css" rel="stylesheet" />

    <style>
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  border: 1px solid #e7e7e7;
  background-color: #f3f3f3;
}

li {
  float: left;
}

li a {
  display: block;
  color: #666;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #ddd;
}

li a.active {
  color: white;
  background-color: #4CAF50;
}

#JobGrid {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#JobGrid td, #JobGrid th {
  border: 1px solid #ddd;
  padding: 8px;
}

#JobGrid tr:nth-child(even){background-color: #f2f2f2;}

#JobGrid tr:hover {background-color: #ddd;}

#JobGrid th {
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
  <a href="main.aspx" class="active">Main</a>
  <a href="job.aspx">New Job</a>
  <a href="customers.aspx">Customer List</a>
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

<div style="padding-left:16px">
</div>
    <form id="form1" runat="server">


        <br />

        <asp:GridView ID="JobGrid" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" OnRowDataBound="JobGrid_RowDataBound1" OnSelectedIndexChanged="JobGrid_SelectedIndexChanged1" OnRowEditing="JobGrid_RowEditing" AllowPaging="True">
            <Columns>
                <asp:BoundField DataField="JobSubject" HeaderText="JobSubject" SortExpression="JobSubject" />
                <asp:BoundField DataField="JobDescription" HeaderText="JobDescription" SortExpression="JobDescription" />
                <asp:BoundField DataField="jobStatus" HeaderText="jobStatus" SortExpression="jobStatus" />
                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                <asp:BoundField DataField="customerName" HeaderText="customerName" SortExpression="customerName" />
            </Columns>
        </asp:GridView>

        &nbsp;<asp:Label ID="testLabel" runat="server" Text="test"></asp:Label>
        <br />
        <asp:Button ID="btnTest" runat="server" OnClick="btnTest_Click" style="height: 26px" Text="Test " />
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="getFullJobList" TypeName="ticketer.JobData" UpdateMethod="updateJobList" >
            <UpdateParameters>
                <asp:Parameter Name="jobStatus" Type="String" />
                <asp:Parameter Name="jobID" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <p>

        <asp:Button ID="newTicketBtn" runat="server" OnClick="Button1_Click" Text="New page" />
        </p>

        

    <button id="java" onclick="CallWebAPI() ;return false">java test</button>

        

        <br />
        <asp:Button ID="senderBtn" runat="server" Text="sender test" />
        <br />
        <br />
        <br />
        <br />

        

    </form>

</body>




    
<script type="text/javascript">

         function CallWebAPI()
         {
           
            var request = new XMLHttpRequest();
            request.open("get", "api/Job", false);
            request.send();
 
             console.log(request.responseText);

            // var request = new XMLHttpRequest();
            //request.open("get", "api/Job", false);
            //request.send();
 
            // console.log(request.responseText);
            //var customerList = JSON.parse(request.responseText);
    }

    function myFunction() {
  var x = document.getElementById("myTopnav");
  if (x.className === "topnav") {
    x.className += " responsive";
  } else {
    x.className = "topnav";
  }
}
</script>






  

</html>
