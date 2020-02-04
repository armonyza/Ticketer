<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updateJob.aspx.cs" Inherits="ticketer.newJobCard" %>

<!DOCTYPE html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>
      <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link href="Content/Main.css" rel="stylesheet" />

    <title>addJob</title>
</head>

<body>

    <div class="topnav" id="myTopnav">
  <a href="main.aspx" >Main</a>
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

    <form id="form1" runat="server" >
<div class="w3-sidebar w3-bar-block w3-light-grey" style="width:20%">

<table >

    <tr><td style ="text-align:right"><asp:Label ID="clientName" runat="server" Text="Client Name"></asp:Label></td><td style ="text-align:left">
        <asp:DropDownList ID="customerDropdown" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource1" DataTextField="customerName" DataValueField="customerName" OnSelectedIndexChanged="customerDropdown_SelectedIndexChanged" OnTextChanged="customerDropdown_TextChanged">
        </asp:DropDownList>
        </td></tr>
    <tr><td style ="text-align:right"><asp:Label ID="clientNumber" runat="server" Text="Client Number"></asp:Label></td><td>
        <asp:Label ID="clientNumberLabel" runat="server" Text="clientNumberLabel"></asp:Label>
        </td></tr>
    <tr><td style ="text-align:right"><asp:Label ID="techName" runat="server" Text="Tech Name"></asp:Label></td><td><asp:TextBox class="w3-right-align" ID="TextBox1" runat="server"></asp:TextBox></td></tr>
    <tr><td style ="text-align:right"><asp:Label ID="status" runat="server" Text="Status: "></asp:Label></td><td><asp:DropDownList ID="jobStatusDropDown" runat="server" onChange="tester('jobStatusDropDown')">
        <asp:ListItem>open</asp:ListItem>
        <asp:ListItem>closed</asp:ListItem>
        <asp:ListItem>complete</asp:ListItem>
    </asp:DropDownList></td></tr>
    <tr><td style ="text-align:right"></td><td><asp:Label ID="dateLabel" runat="server" Text="Date"></asp:Label></td></tr>
    <tr><td style ="text-align:right"></td><td><asp:Button ID="jobCompleteUpdate" runat="server" Text="     Save    " OnClick="jobCompleteUpdate_Click" /></td></tr>
</table>


    
    &nbsp;<br />



    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="getCustomerList" TypeName="ticketer.JobData"></asp:ObjectDataSource>



</div>

<div style="margin-left:20%"/>

<style>
body {font-family: Arial;}

/* Style the tab */
.tab {
  overflow: hidden;
  border: 1px solid #ccc;
  background-color: #f1f1f1;
}

/* Style the buttons inside the tab */
.tab button {
  background-color: inherit;
  float: left;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 14px 16px;
  transition: 0.3s;
  font-size: 17px;
}

/* Change background color of buttons on hover */
.tab button:hover {
  background-color: #ddd;
}

/* Create an active/current tablink class */
.tab button.active {
  background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
  display: none;
  padding: 6px 12px;
  border: 1px solid #ccc;
  border-top: none;
}
    .auto-style1 {
        height: 26px;
    }
    .auto-style2 {
        height: 26px;
        width: 111px;
    }
    .auto-style3 {
        width: 100%;
    }


</style>
        
            <table class="auto-style3">
                <tr>
                    
                    <td class="auto-style2">
                        <div class="w3-right-align" >
    <asp:Label ID="jobSubjectLabel" runat="server" Text="Subject: "></asp:Label>
                        <br />
        
    <asp:Label ID="jobDescriptionLabel" runat="server" Text="Job Description: "></asp:Label></div></td>
                    <td class="auto-style1"><asp:TextBox ID="jobSubjectTextbox" runat="server"></asp:TextBox>
                        <br />
                        <asp:TextBox ID="jobDescriptionTextbox" runat="server"></asp:TextBox>
                    </td>
                </tr>

            </table>
    <br/>

<div class="tab">
  <button id='bookItemTab' class="tablinks" onclick="openCity(event, 'bookIn');return false">Book Item</button>
  <button class="tablinks" onclick="openCity(event, 'workLog');return false">Work Log</button>
  <button class="tablinks" onclick="openCity(event, 'jobComplete');return false">Resolusion</button>
</div>

<div id="bookIn" class="tabcontent">
    <h3>Booked Item Detail</h3><br />
    <asp:TextBox ID="bookInTextbox" runat="server" Height="500px"  TextMode="MultiLine" Width="1000"></asp:TextBox>
</div>

<div id="workLog" class="tabcontent">
  <h3>Work Log</h3><br />
    <asp:TextBox ID="workLogTextbox" runat="server" Height="500px"  TextMode="MultiLine" Width="1000"></asp:TextBox>
</div>

<div id="jobComplete" class="tabcontent">
  <h3>Hours Worked</h3><br />
   <label>Hours</label>
    <asp:TextBox ID="hoursWorkedTextbox" runat="server" onkeyup="checkNumber()"></asp:TextBox><br />
    <asp:DropDownList ID="jobCompleteDropDown" runat="server" onChange="tester('jobCompleteDropDown')">
        <asp:ListItem>open</asp:ListItem>
        <asp:ListItem>closed</asp:ListItem>
        <asp:ListItem>complete</asp:ListItem>
    </asp:DropDownList><br />
    
</div>
</form>
<script>
function openCity(evt, cityName)
{
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }
  document.getElementById(cityName).style.display = "block";
  evt.currentTarget.className += " active";
    }

    function tester(passedDropList)
    {
        var selectedDropList = passedDropList;

        if (selectedDropList == "jobStatusDropDown") {
            jobCompleteDropDown.value = jobStatusDropDown.value;
        }
        else if (selectedDropList == "jobCompleteDropDown")
        {
            jobStatusDropDown.value = jobCompleteDropDown.value;
        }
        
    }



            function checkNumber()
            {

                var x = document.getElementById("hoursWorkedTextbox").value;

                if (isNaN(x))
                {
                    document.getElementById("hoursWorkedTextbox").value = "";
                 }
            }




    function pageLoadFinished()
    {
        document.getElementById("bookItemTab").click();
    }


    var request = new XMLHttpRequest();
            request.open("get", "api/Job", false);
            request.send();
 
             console.log(request.responseText);
            var customerList = JSON.parse(request.responseText);


            
            $(function ()
            {
            var availableTags = customerList;
                $("#clientNameTextbox").autocomplete(
                    {
                        source: availableTags
                    });
            });

    pageLoadFinished();

</script>
        </body>
            

</html>
