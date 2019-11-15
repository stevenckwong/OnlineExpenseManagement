M.AutoInit();
hideLoading();
hideResults();

document.addEventListener('DOMContentLoaded', function() {
    var elems = document.querySelectorAll('.datepicker');
    var instances = M.Datepicker.init(elems, options);
  });
  
document.getElementById('newentryform').addEventListener('submit', toastNewEntry);

function createNewEntry(e) {
	hideResults();
	showLoading();
	setTimeout(function(){
        hideLoading();
        showResults();
        },2000)
        
    setTimeout(function(){
    	hideResults();
    },4000)    

    e.preventDefault();
}

function toastNewEntry(e) {
	var toastHTML = 'Quick entry submitted!';
	M.toast({html: toastHTML,displayLength: 2000});
	clearFields();
	e.preventDefault();
}

function clearFields() {
	document.getElementById('newentryamount').value='0.00';
	document.getElementById('newentrydesc').value='';
}


function hideLoading() {
    const loadingPanel = document.getElementById('loading');
    loadingPanel.style.display='none';
}

function showLoading() {
    const loadingPanel = document.getElementById('loading');
    loadingPanel.style.display='block';
}

function hideResults() {
    const loadingPanel = document.getElementById('results');
    loadingPanel.style.display='none';
}

function showResults() {
    const loadingPanel = document.getElementById('results');
    loadingPanel.style.display='block';
}
