function downButton(num) {

}

function intAmountMouseDown(funcID) {
    num = document.getElementById(funcID).value;
    if (num > 0) {
        num = num - 1;
    }
    else {
        num = 0;
    }
    document.getElementById(funcID).value = num;
}

function intAmountMouseUp(funcID) {
    num = parseInt(document.getElementById(funcID).value);
    if (num >= 0) {
        num = num + 1;
    }
    else {
        num = 0;
    }
    
    document.getElementById(funcID).value = num;
}

function intQtyMouseDown(funcID) {
    num = document.getElementById(funcID).value;
    if (num > 0) {
        num = num - 1;
    }
    else {
        num = 0;
    }
    document.getElementById(funcID).value = num;
}

function intQtyMouseUp(funcID) {
    num = parseInt(document.getElementById(funcID).value);
    if (num >= 0) {
        num = num + 1;
    }
    else {
        num = 0;
    }

    document.getElementById(funcID).value = num;
}

function createRowFunction() {
    var table = document.getElementById("CartTable");
    var row = table.insertRow(0);
    var cell1 = row.insertCell(0);
    var cell2 = row.insertCell(1);
    cell1.innerHTML = "NEW CELL1";
    cell2.innerHTML = "NEW CELL2";
}

function createLocalStorage() {
    localStorage.createLocalStorage();
    localStorage.setItem('CartItem', '');
    localStorage.setItem('ItemQty', '');
    localStorage.setItem('ItemPrice','')
}

function addNewItemCookie(itemName, itemPrice, itemQty) {
    localStorage.itemQty = localStorage.getItem
}