<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Job.aspx.cs" Inherits="ticketer.Job" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>
    <%--  <link rel="stylesheet" href="/resources/demos/style.css"/>--%>
    <link href="Content/MainSheet.css" rel="stylesheet" />
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


    <style type="text/css">
        .auto-style1 {
            width: 700px;
        }
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
    </style>


    </head>
<body>

    <div class="topnav" id="myTopnav">
  <a href="main.aspx">Main</a>
  <a href="job.aspx" class="active">New Job</a>
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
        <table>
            <tr><td>customer</td><td class="auto-style1">
                <%--<asp:DropDownList ID="customerDropdown" runat="server" DataSourceID="ObjectDataSource1" DataTextField="customerName" DataValueField="customerName">
                </asp:DropDownList>--%>
                <asp:TextBox ID="customerTextbox" runat="server"></asp:TextBox>
                <input class="auto-style2" onclick="openForm()" value="New Customer"/>
                    
                </td></tr>
            <tr><td>subject</td><td class="auto-style1"><asp:TextBox ID="subjectTextbox" runat="server" Height="22px" Width="515px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidatorSubject" runat="server" ErrorMessage="Subject must not be blank" ControlToValidate="subjectTextbox" ForeColor="Red"></asp:RequiredFieldValidator></td></tr>
            <tr><td>description</td><td class="auto-style1"><asp:TextBox ID="descriptionTextbox" runat="server" Height="248px" Width="512px"></asp:TextBox></td></tr>
            <tr><td>status</td><td class="auto-style1"><asp:DropDownList ID="statusDropDown" runat="server">
                <asp:ListItem>complete</asp:ListItem>
                <asp:ListItem>closed</asp:ListItem>
                <asp:ListItem>open</asp:ListItem>
            </asp:DropDownList></td></tr>
            <tr><td>Hours Worked</td><td class="auto-style1"><asp:TextBox ID="LabourTimeInput" onkeyup="checkNumber()" runat="server" Width="23px"></asp:TextBox></td></tr>
            <tr><td>Date :</td><td class="auto-style1"><asp:TextBox ID="dateTextbox" runat="server" OnTextChanged="dateTextbox_TextChanged"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidatorDate" runat="server" ErrorMessage="Date must not be blank" ControlToValidate="dateTextbox" ForeColor="Red" ></asp:RequiredFieldValidator></td></tr>
            <tr><td><asp:Button ID="submitBtn" runat="server" OnClick="Button1_Click" Text="create job" /></td><td></td></tr>
        </table>
           <asp:Button ID="emailBtn" runat="server" OnClick="emailBtn_Click" Text="send email" CausesValidation="False" />
        <p id="test">
            <%--<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="getCustomerList" TypeName="ticketer.JobData"></asp:ObjectDataSource>--%>
        </p>

    </form>

    

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

            function checkNumber()
            {

                var x = document.getElementById("LabourTimeInput").value;

                if (isNaN(x))
                {
                    document.getElementById("LabourTimeInput").value = "";
                 }
            }


            //working api call
            //******************************
            //var request = new XMLHttpRequest();
            //request.open("post", "http://localhost:54517/api/Job/newCustomer?cName=test1&cNumber=test1", false);
            //request.send();
 
            // console.log(request.responseText);


           
            var request = new XMLHttpRequest();
            request.open("get", "api/Job/CustomerList", false);
            request.send();
 
            // console.log(request.responseText);
            var customerList = JSON.parse(request.responseText);


            
            $(function ()
            {
            var availableTags = customerList;
                $("#customerTextbox").autocomplete(
                    {
                        source: availableTags
                    });
            });


            $(function ()
            {
                $("#dateTextbox").datepicker({ dateFormat: "dd/mm/yy"});
            });

            function topNavBarResponse() {
  var x = document.getElementById("myTopnav");
  if (x.className === "topnav") {
    x.className += " responsive";
  } else {
    x.className = "topnav";
  }
}


  </script>



</html>
