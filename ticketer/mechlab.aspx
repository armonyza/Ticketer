<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mechlab.aspx.cs" Inherits="ticketer.mechlab" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>

    <form id="form1" runat="server">

    <div class="auto-style4">
        <ul style="list-style-type:none;">
            <li id="sLazer" draggable="true" ondragstart="drag(event)">Small Lazer</li>
            <li id="mLazer" draggable="true" ondragstart="drag(event)">Medium Lazer</li>
            <li id="lLazer" draggable="true" ondragstart="drag(event)">Large Lazer</li>
            <li id="machinegun" draggable="true" ondragstart="drag(event)">Machinegun</li>
            <li id="ac5" draggable="true" ondragstart="drag(event)">AC5</li>
            <li id="ac10" draggable="true" ondragstart="drag(event)">AC10</li>
            <li id="srm6" draggable="true" ondragstart="drag(event)">SRM 6</li>
            <li id="lrm5" draggable="true" ondragstart="drag(event)">LRM 5</li>
            <li id="lrm20" draggable="true" ondragstart="drag(event)">LRM 20</li>
            <li id="engine200" draggable="true" ondragstart="drag(event)">Engine 200</li>
            <li id="engine250" draggable="true" ondragstart="drag(event)">Engine 250</li>
            <li id="engine300" draggable="true" ondragstart="drag(event)">Engine 300</li>

        </ul>
        <br />
        <label id ="weightLabel">Weight label display </label>
        <br />
        <br />

    </div>

    <div class="grideviewcol1">
        <table class="HardPointTable">
            <tr><td colspan="3">Right Arm</td></tr>
            <tr ><td class="redColourFill" id="RightArmEDisplay"></td><td class="yellowColourFill" id="RightArmBDisplay"></td><td class="greenColourFill" id="RightArmMDisplay"></td></tr></table>
        <table id="RightArmTable" ondrop="drop(event,'RightArmTable',RightArmPoints,RightArmArray)" ondragover="allowDrop(event)">
            <tr>
                <td>taken</td>
            </tr>
            <tr>
                <td>taken</td>
            </tr>
            <tr>
                <td>Empty</td>
            </tr>
            <tr>
                <td>Empty</td>
            </tr>
            <tr>
                <td>Empty</td>
            </tr>
            <tr>
                <td>Empty</td>
            </tr>
            <tr>
                <td>Empty</td>
            </tr>
            <tr>
                <td>Empty</td>
            </tr>
            <tr>
                <td>Empty</td>
            </tr>
            <tr>
                <td>Empty</td>
            </tr>
            <tr>
                <td class="auto-style8">Empty</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
            </tr>
        </table>
    </div>





    <div class="grideviewcol1">
        <table class="HardPointTable">
            <tr><td colspan="3">Head</td></tr>
            <tr ><td class="redColourFill" id="HeadEDisplay"></td><td class="yellowColourFill" id="HeadBDisplay"></td><td class="greenColourFill" id="HeadMDisplay"></td></tr></table>
        <table id="HeadTable" ondrop="drop(event,'HeadTable',HeadPoints,HeadArray)" ondragover="allowDrop(event)">
            <tr>
                <td>headTable</td>

            </tr>
            <tr>
                <td class="auto-style6">headTable</td>

            </tr>
            <tr>
                <td>Empty</td>

            </tr>
            <tr>
                <td>Empty</td>

            </tr>
            <tr>
                <td>Empty</td>

            </tr>
            <tr>
                <td>Empty</td>

            </tr>

        </table>
    </div>




    <div class="grideviewcol1">
        <table class="HardPointTable">
            <tr><td colspan="3">Left Arm</td></tr>
            <tr ><td class="redColourFill" id="LeftArmEDisplay"></td><td class="yellowColourFill" id="LeftArmBDisplay"></td><td class="greenColourFill" id="LeftArmMDisplay"></td></tr></table>
        <table id="LeftArmTable" ondrop="drop(event,'LeftArmTable',LeftArmPoints,LeftArmArray)" ondragover="allowDrop(event)">
            <tr>
                <td>LeftArmTable</td>

            </tr>
            <tr>
                <td>LeftArmTable</td>

            </tr>
            <tr>
                <td>Empty</td>

            </tr>
            <tr>
                <td>Empty</td>

            </tr>
            <tr>
                <td>Empty</td>

            </tr>
            <tr>
                <td>Empty</td>

            </tr>
            <tr>
                <td>Empty</td>

            </tr>
            <tr>
                <td>Empty</td>

            </tr>
            <tr>
                <td>Empty</td>

            </tr>
            <tr>
                <td>Empty</td>

            </tr>
            <tr>
                <td>Empty</td>

            </tr>
            <tr>
                <td>&nbsp;</td>

            </tr>
        </table>

    </div>

    <div class="grideviewcol2">
        <table class="HardPointTable">
            <tr ><td >Right Leg</td></tr></table>
        <table id="RightLegTable" ondrop="drop(event,'RightLegTable',RightLegPoints,RightLegArray)" ondragover="allowDrop(event)">
            <tr>
                <td class="auto-style7">rightLegTable</td>

            </tr>
            <tr>
                <td class="auto-style1">rightLegTable</td>

            </tr>
            <tr>
                <td class="auto-style1">Empty</td>

            </tr>
            <tr>
                <td class="auto-style3">Empty</td>

            </tr>
            <tr>
                <td class="auto-style7">Empty</td>

            </tr>
            <tr>
                <td class="auto-style1">Empty</td>

            </tr>
            <tr>
                <td class="auto-style1">Empty</td>

            </tr>
            <tr>
                <td class="auto-style1">Empty</td>

            </tr>
            <tr>
                <td class="auto-style1">Empty</td>

            </tr>
            <tr>
                <td class="auto-style1">Empty</td>

            </tr>
            <tr>
                <td class="auto-style1">Empty</td>

            </tr>
            <tr>
                <td class="auto-style3">Empty</td>

            </tr>
        </table>
    </div>

    <div class="grideviewcol2">
        <table class="HardPointTable">
            <tr><td colspan="4">Centre Torso</td>

            </tr><tr ><td class="redColourFill" id="CentreEDisplay"></td><td class="yellowColourFill" id="CentreBDisplay"></td><td class="greenColourFill" id="CentreMDisplay"></td><td class="greyColourFill" id="CentreEngineDisplay"></td></tr></table>
        <table id="CentreTorsoTable" ondrop="drop(event,'CentreTorsoTable',CentrePoints,CentreArray)" ondragover="allowDrop(event)">
            <tr>
                <td>Centre Torso</td>

            </tr>
            <tr>
                <td>Centre Torso</td>

            </tr>
            <tr>
                <td>Empty</td>

            </tr>
            <tr>
                <td>Empty</td>

            </tr>
            <tr>
                <td>Empty</td>

            </tr>
            <tr>
                <td>Empty</td>

            </tr>
            <tr>
                <td class="auto-style6">Empty</td>

            </tr>
            <tr>
                <td>Empty</td>

            </tr>
            <tr>
                <td>Empty</td>

            </tr>
            <tr>
                <td>Empty</td>

            </tr>
            <tr>
                <td>Empty</td>

            </tr>
            <tr>
                <td>Empty</td>

            </tr>
        </table>
    </div>




    <div class="grideviewcol2">
        <table class="HardPointTable"><tr ><td >Left Leg</td></tr></table>
        <table id="LeftLegTable" ondrop="drop(event,'LeftLegTable',LeftLegPoints,LeftLegArray)" ondragover="allowDrop(event)">
            <tr>
                <td>left leg</td>

            </tr>
            <tr>
                <td>left leg</td>

            </tr>
            <tr>
                <td>Empty</td>

            </tr>
            <tr>
                <td>Empty</td>

            </tr>
            <tr>
                <td>Empty</td>

            </tr>
            <tr>
                <td>Empty</td>

            </tr>
            <tr>
                <td>Empty</td>

            </tr>
            <tr>
                <td>Empty</td>

            </tr>
            <tr>
                <td>Empty</td>

            </tr>
            <tr>
                <td>Empty</td>

            </tr>
            <tr>
                <td>Empty</td>

            </tr>
            <tr>
                <td>Empty</td>

            </tr>
        </table>
    </div>








   <style>

        /*#CentreEDisplay,#LeftLegEDisplay,#RightLegEDisplay,#LeftArmEDisplay,#HeadEDisplay,#RightArmEDisplay*/

        #sLazer, #mLazer, #lLazer
        {
            background-color: red;
            border: 1px solid black;
            border-radius: 10px;
            color: black;
            padding: 7px 7px;
            text-align: center;
            margin: 4px 2px;
        }

        .redColourFill
        {
            background-color: red;
            border: 1px solid black;
            border-radius: 10px;
            color: black;
            padding: 7px 7px;
            text-align: center;
            margin: 4px 2px;
        }

        
        #machinegun, #ac5, #ac10 
        {
            background-color: yellow;
            border: 1px solid black;
            border-radius: 10px;
            color: black;
            padding: 7px 7px;
            text-align: center;
            margin: 4px 2px;
        }

        .yellowColourFill
        {
            background-color: yellow;
            border: 1px solid black;
            border-radius: 10px;
            color: black;
            padding: 7px 7px;
            text-align: center;
            margin: 4px 2px;
        }

        #srm6, #lrm5, #lrm20
        {
            background-color: green;
            border: 1px solid black;
            border-radius: 10px;
            color: black;
            padding: 7px 7px;
            text-align: center;
            margin: 4px 2px;
        }
        .greenColourFill
        {
            background-color: green;
            border: 1px solid black;
            border-radius: 10px;
            color: black;
            padding: 7px 7px;
            text-align: center;
            margin: 4px 2px;
        }

        #engine200, #engine250, #engine300
        {
            background-color: lightgray;
            border: 1px solid black;
            border-radius: 10px;
            color: black;
            padding: 7px 7px;
            text-align: center;
            margin: 4px 2px;
        }

        .greyColourFill
        {
            background-color: lightgray;
            border: 1px solid black;
            border-radius: 10px;
            color: black;
            padding: 7px 7px;
            text-align: center;
            margin: 4px 2px; 
        }

        th, td, #RightArmTable, #HeadTable, #LeftArmTable, #LeftLegTable, #CentreTorsoTable, #RightLegTable      
        {
            border: 1px solid black;
            border-collapse: collapse;
            width: 125px;
            background-color: white;
            
        }

        .HardPointTable
        {
            width: 125px;
            height: 22px;
            text-align: center;
            background-color: white;
        }


        * {
            box-sizing: border-box;
        }

        .grideviewcol1
        {
            width: 25%;
            /*border: 1px solid red;*/
            padding: 15px;
            float: left;
        }

        .grideviewcol2
        {
            width: 25%;
            /*border: 1px solid red;*/
            padding: 15px;
            float: left;
        }

        .auto-style4
        {
            width: 14%;
            border: 1px solid DarkGrey;
            padding: 15px;
            float: left;
            height: 632px;
        }

       #dailyReportBtn,#weightLabel
       {
           background-color: #4CAF50; /* Green */
           padding: 16px 32px;
           text-align: center;
           text-decoration: none;
           display: inline-block;
           font-size: 16px;
           margin: 4px 2px;
           -webkit-transition-duration: 0.1s; /* Safari */
           transition-duration: 0.1s;
           cursor: pointer;
           background-color: white;
           color: black;
           border: 2px solid #4CAF50;
           border-radius: 4px;
       }

       #dailyReportBtn:hover
       {
          background-color: #4CAF50;
          color: white;
        }



        body {background-color: darkgrey;}


    </style>


        


    <p>
        &nbsp;
    </p>
    <p>
        &nbsp;
    </p>


    </form>


</body>


<script>

    RightArmArray = ['Internal Stucture', 'Internal Stucture', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty'];
    HeadArray = ['Internal Stucture', 'Internal Stucture', 'Empty', 'Empty', 'Empty', 'Empty'];    
    LeftArmArray = ['Internal Stucture', 'Internal Stucture', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty'];
    RightLegArray = ['Internal Stucture', 'Internal Stucture', 'Internal Stucture', 'Internal Stucture', 'Internal Stucture', 'Internal Stucture', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty','Empty'];
    CentreArray = ['Internal Stucture', 'Internal Stucture', 'Internal Stucture', 'Internal Stucture', 'Internal Stucture', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty','Empty'];
    LeftLegArray = ['Internal Stucture', 'Internal Stucture', 'Internal Stucture', 'Internal Stucture', 'Internal Stucture', 'Internal Stucture', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty','Empty'];



    var mechname = "shadowHawk";
    var maxWeight = 50;
    var currentWeight = 0;
    var tableCellItemClass = { empty: 'Empty', structure: 'Internal Stucture', itemfill: ' - - - ' };
    var selectedCell;



    var RightArmPoints = { ePoints: 2, bPoints: 1, mPoints: 3, engine: 0 };
    var HeadPoints = { ePoints: 1, bPoints: 0, mPoints: 0, engine: 0 };
    var LeftArmPoints = { ePoints: 0, bPoints: 2, mPoints: 1, engine: 0 };
    var RightLegPoints = { ePoints: 0, bPoints: 0, mPoints: 0, engine: 0 };
    var CentrePoints = { ePoints: 0, bPoints: 0, mPoints: 1, engine: 1 };
    var LeftLegPoints = { ePoints: 0, bPoints: 0, mPoints: 0, engine: 0 };

    var mLazer = { name: 'Med Lazer', size: 1, weight: 1, type: 'energy' };
    var sLazer = { name: 'Small Lazer', size: 1, weight: 0.5, type: 'energy' };
    var lLazer = { name: 'Large Lazer', size: 3, weight: 5, type: 'energy' };

    var srm6 = { name: 'SRM6', size: 3, weight: 3, type: 'missile' };
    var lrm5 = { name: 'LRM5', size: 1, weight: 2, type: 'missile' };
    var lrm20 = { name: 'LRM20', size: 6, weight: 6, type: 'missile' };

    var machinegun = { name: 'Machine gun', size: 2, weight: 0.5, type: 'ballistic' };
    var ac5 = { name: 'AC5', size: 5, weight: 7, type: 'ballistic' };
    var ac10 = { name: 'AC10', size: 8, weight: 12, type: 'ballistic' };

    var engine200 = { name: 'Engine200', size: 6, weight: 25, type: 'engine' };
    var engine250 = { name: 'Engine250', size: 6, weight: 30, type: 'engine' };
    var engine300 = { name: 'Engine300', size: 6, weight: 35, type: 'engine' };



    function setCellSelectors(tableName)
    {
        var tbl = document.getElementById(tableName);
        var currentArray;
        var currentHardpoint;
        
        if (tableName == "RightArmTable")
        {
            currentArray = RightArmArray;
            currentHardpoint = RightArmPoints;
        }
        else if (tableName == "LeftArmTable")
        {
            currentArray = LeftArmArray;
            currentHardpoint = LeftArmPoints;
        }
        else if (tableName == "HeadTable")
        {
            currentArray = HeadArray;
            currentHardpoint = HeadPoints;
        }
        else if (tableName == "RightLegTable")
        {
            currentArray = RightLegArray;
            currentHardpoint = RightLegPoints;
        }
        else if (tableName == "CentreTorsoTable")
        {
            currentArray = CentreArray;
            currentHardpoint = CentrePoints;
        }
        else if (tableName == "LeftLegTable")
        {
            currentArray = LeftLegArray;
            currentHardpoint = LeftLegPoints;
        }

        if (tbl != null)
        {
            for (var i = 0; i < tbl.rows.length; i++)
            {
                for (var j = 0; j < tbl.rows[i].cells.length; j++)
                    tbl.rows[i].cells[j].onclick = function ()
                    {
                        removeItemUpdateArray(this,currentArray,tableName,currentHardpoint);
                    };
            }
        }        

    }

    function removeItemUpdateArray(cell, currentArray,tableName,currentHardpoint)
    {
        var currentRowIndex = cell.parentNode.rowIndex;
        var cellValue = cell.innerHTML;
        var removedItemName;
        var removedItemObject;       


        if (currentArray[currentRowIndex] != 'Internal Stucture')
        {
            //index varaibles to loop up from the clicked cell and down after clicked cell,
            //it is + 1 because the starting point for looping down is not testing an already modified cell from the previous do while loop

            var loopUpRowIndex = currentRowIndex;
            var loopDownRowIndex = currentRowIndex+1;
                do
                {
                    
                    if (currentArray[loopUpRowIndex] != " - - - " && currentArray[loopUpRowIndex] != 'Internal Stucture')
                    {
                        removedItemName = currentArray[loopUpRowIndex]; 
                        currentArray[loopUpRowIndex] = "Empty";
                        loopUpRowIndex--;
                        break;
                    }
                    else
                    {
                        removedItemName = currentArray[loopUpRowIndex]; 
                        currentArray[loopUpRowIndex] = "Empty";
                        loopUpRowIndex--;
                    }
  
                }
            while (currentArray[currentRowIndex] != 'Internal Stucture')

            do
                {
                    if (currentArray[loopDownRowIndex] != " - - - " && currentArray[loopDownRowIndex] != 'Internal Stucture')
                    {
                        break;
                    }
                    else
                    {
                        currentArray[loopDownRowIndex] = "Empty";
                        loopDownRowIndex++;
                    }
                    
                }
                while (currentArray[loopDownRowIndex] != 'Internal Stucture')
            
        }


        //update table array and hard points

        removedItemObject = findRemovedItemObject(removedItemName);
        updateCurrentTable(currentArray, tableName,removedItemObject.type);        
        currentHardpoint = updateHardpoint(currentHardpoint, removedItemObject.type, false);
        checkAndUpdateWeight((removedItemObject.weight*-1));

        //var txt = '';
        //for (k = 0; k < RightArmArray.length; k++)
        //{
        //    txt = txt + " " + RightArmArray[k];
            
        //} 
        //console.log(txt);
           
    } 

    function checkAndUpdateWeight(weightValue)
    {
        currentWeight = currentWeight + weightValue;

        if (maxWeight < currentWeight)
        {

            currentWeight = currentWeight - weightValue;
            alert("not enough weight to add item");
            return false;
        }
        else
        {
            document.getElementById('weightLabel').innerHTML = currentWeight + ' of ' + maxWeight;
            return true;
        } 
    }

    function findRemovedItemObject(itemName)
    {

        if (itemName == mLazer.name)
        {
            return mLazer;
        }
        else if (itemName == sLazer.name)
        {
            return sLazer;
        }
        else if (itemName == lLazer.name)
        {
            return lLazer;
        }
        else if (itemName == srm6.name)
        {
            return srm6;
        }
        else if (itemName == lrm5.name)
        {
            return lrm5;
        }
        else if (itemName == lrm20.name)
        {
            return lrm20;
        }
        else if (itemName == machinegun.name)
        {
            return machinegun;
        }
        else if (itemName == ac5.name)
        {
            return ac5;
        }
        else if (itemName == ac10.name)
        {
            return ac10;
        }
        else if (itemName == engine200.name)
        {
            return engine200;
        }
        else if (itemName == engine250.name)
        {
            return engine250;
        }
        else if (itemName == engine300.name)
        {
            return engine300;
        }


    }

    function checkFreeSlots(intWeapSize, TableArray)
    {
        var CurrentWeapsize = intWeapSize;
        var freeSlots = 0;

        
        for (i = 0; i < TableArray.length; i++)
        {

            if (TableArray[i] == 'Empty')
            {
                freeSlots = freeSlots + 1;
            }

         }

        if (freeSlots < CurrentWeapsize) {
            alert('there are not enough free slots for the item');
            return false;
        }
        else
        {
            return true;
        }

        
    }


    function updateComponentTableArrayAddItem(intWeapSize, StringSelectedWeapon, TableArray)
    {
        var CurrentWeapsize = intWeapSize;
        var CurrentSelectedWeapon = StringSelectedWeapon;
        var CurrentArray = TableArray;


        for (i = 0; i < CurrentArray.length; i++)
        {

            if (CurrentArray[i] == 'Empty')
            {
                //j=1 so that we loop the correct amount, 1 less than size
                var j = 1;

                do {

                    if (j == 1) {
                        CurrentArray[i] = CurrentSelectedWeapon
                        if (CurrentWeapsize > 1)
                        {
                            CurrentArray[i + j] = " - - - ";
                        }

                    }


                    else if (j => 2)
                    {

                        CurrentArray[i + j] = " - - - ";
                    }

                    j++;

                }
                while (CurrentWeapsize > j);

                i = CurrentArray.length;
            }
        }


        return CurrentArray;
    }
               


    function updateCurrentTable(tableArray, tableName,itemType)
    {

        var table = document.getElementById(tableName);
        for (var i = 0, row; row = table.rows[i]; i++)
        {
            //assign colour of added item to the new cells
            if (row.cells[0].innerHTML == "Empty")
            {
                if (row.cells[0].innerHTML == tableArray[i])
                {
                row.cells[0].innerHTML = tableArray[i]
                }
                else if (itemType == 'energy')
                {
                row.cells[0].innerHTML = tableArray[i];
                row.cells[0].style.backgroundColor = "red";
                }

                else if (itemType == 'missile')
                {
                row.cells[0].innerHTML = tableArray[i];
                row.cells[0].style.backgroundColor = "green";
                }
                else if (itemType == 'ballistic')
                {
                row.cells[0].innerHTML = tableArray[i];
                row.cells[0].style.backgroundColor = "yellow";
                 }
                else if (itemType == 'engine')
                {
                row.cells[0].innerHTML = tableArray[i];
                row.cells[0].style.backgroundColor = "grey";
                }
                else
                {
                row.cells[0].innerHTML = tableArray[i];
                }
            }
            else
            {
                if (tableArray[i] == "Empty")
                {
                    row.cells[0].innerHTML = tableArray[i];
                    row.cells[0].style.backgroundColor = "white";
                }
                else
                {
                    row.cells[0].innerHTML = tableArray[i];
                }
                
            }
            

        }

    }
               


    function checkHardpoint(hardPoints, WeaponType,itemType)
    {
               var currentWeaponType = WeaponType;
               var CurrentHardPoints = hardPoints;
               var hardPointSpace;

               if (WeaponType == 'energy')
               {
                   if (CurrentHardPoints.ePoints >= 1)
                   {
                       hardPointSpace = true;
                   }
                   else
                   {
                       hardPointSpace = false;
                       alert('there are not enough '+ itemType+ ' hard points');
                   }
               }
               else if (WeaponType == 'ballistic')
               {
                   if (CurrentHardPoints.bPoints >= 1)
                   {
                       hardPointSpace = true;
                   }
                   else
                   {
                       hardPointSpace = false;
                       alert('there are not enough '+ itemType+ ' hard points');
                   }
               }
               else if (WeaponType == 'missile')
               {
                   if (CurrentHardPoints.mPoints >= 1)
                   {
                       hardPointSpace = true;
                   }
                   else
                   {
                       hardPointSpace = false;
                       alert('there are not enough '+ itemType+ ' hard points');
                   }

               }
               else if (WeaponType == 'engine')
               {
                   if (CurrentHardPoints.engine >= 1)
                   {
                       hardPointSpace = true;
                   }
                   else
                   {
                       hardPointSpace = false;
                       alert('there are not enough '+ itemType+ ' hard points');
                   }
               }

               return hardPointSpace;

           }

    function updateHardpoint(hardPoints, WeaponType,addOrRemove)
            {
        var CurrentHardPoints = hardPoints;

        if (addOrRemove == true)
        {
            if (WeaponType == 'energy')
            {

                CurrentHardPoints.ePoints = CurrentHardPoints.ePoints - 1;


            }
            else if (WeaponType == 'ballistic')
            {
                CurrentHardPoints.bPoints = CurrentHardPoints.bPoints - 1;
            }
            else if (WeaponType == 'missile')
            {
                CurrentHardPoints.mPoints = CurrentHardPoints.mPoints - 1;
            }
            else if (WeaponType == 'engine')
            {
                CurrentHardPoints.engine = CurrentHardPoints.engine - 1;
            }

            
        }

        else if (addOrRemove == false)
        {
            if (WeaponType == 'energy')
            {

             CurrentHardPoints.ePoints = CurrentHardPoints.ePoints + 1;


            }
            else if (WeaponType == 'ballistic')
            {
                CurrentHardPoints.bPoints = CurrentHardPoints.bPoints + 1;
            }
            else if (WeaponType == 'missile')
            {
                CurrentHardPoints.mPoints = CurrentHardPoints.mPoints + 1;
            }
            else if (WeaponType == 'engine')
            {
                CurrentHardPoints.engine = CurrentHardPoints.engine + 1;
            }

        }
        return CurrentHardPoints;

               

    }


    function firstLoad()
    {
               
        updateCurrentTable(RightArmArray,'RightArmTable',''); 
        updateCurrentTable(HeadArray, 'HeadTable','');
        updateCurrentTable(LeftArmArray, 'LeftArmTable','');
        updateCurrentTable(RightLegArray, 'RightLegTable','');
        updateCurrentTable(CentreArray,'CentreTorsoTable',''); 
        updateCurrentTable(LeftLegArray, 'LeftLegTable','');

        setCellSelectors('RightArmTable');
        setCellSelectors('HeadTable');
        setCellSelectors('LeftArmTable');
        setCellSelectors('RightLegTable');
        setCellSelectors('CentreTorsoTable');
        setCellSelectors('LeftLegTable');

        RightArmEDisplay.innerHTML = RightArmPoints.ePoints;
        RightArmBDisplay.innerHTML = RightArmPoints.bPoints;
        RightArmMDisplay.innerHTML = RightArmPoints.mPoints;

        HeadEDisplay.innerHTML = HeadPoints.ePoints;
        HeadBDisplay.innerHTML = HeadPoints.bPoints;
        HeadMDisplay.innerHTML = HeadPoints.mPoints;

        LeftArmEDisplay.innerHTML = LeftArmPoints.ePoints
        LeftArmBDisplay.innerHTML = LeftArmPoints.bPoints
        LeftArmMDisplay.innerHTML = LeftArmPoints.mPoints


        CentreEDisplay.innerHTML = CentrePoints.ePoints;
        CentreBDisplay.innerHTML = CentrePoints.bPoints;
        CentreMDisplay.innerHTML = CentrePoints.mPoints;
        CentreEngineDisplay.innerHTML = CentrePoints.engine;

        document.getElementById('weightLabel').innerHTML = currentWeight + ' of ' + maxWeight;


    }


           function allowDrop(ev)
           {
               ev.preventDefault();
           }

           function drag(ev)
           {
               ev.dataTransfer.setData("text", ev.target.id);
           }


           function drop(ev,tableName,hardPoints,tableArrayName)
           {
               ev.preventDefault();
               var data = ev.dataTransfer.getData("text");
               //ev.target.appendChild(document.getElementById(data));

               itemName = this[data].name;
               itemType = this[data].type;
               itemSize = this[data].size;
               itemWeight = this[data].weight;
               

               addItem(tableName,itemName,itemType,itemSize,itemWeight,tableArrayName,hardPoints);
           }



    function addItem(tableName,itemName,itemType,itemSize,itemWeight,tableArrayName,hardPoints)
    {
        //check if there is a hard point space
        var hardPointCheckResult = checkHardpoint(hardPoints, itemType,itemType); 

        if (hardPointCheckResult == true)
        {
            var space = checkFreeSlots(itemSize, tableArrayName);

            if (space == true)
            {
                var weightSpace = checkAndUpdateWeight(itemWeight);
                if (weightSpace == true)
                {
                    var updatedHardpoints = updateHardpoint(hardPoints, itemType,true);
                    var updateditemArray = updateComponentTableArrayAddItem(itemSize, itemName, tableArrayName);
                    updateCurrentTable(updateditemArray, tableName,itemType);

                    hardPoints = updatedHardpoints;
                    tableArrayName = updateditemArray;
                }
                

            }
           
        }


    } 

    firstLoad();




</script>
</html>
