$(document).ready(function(){
		  
		var tablecount = 0;
		var captaincount = 0;
		var text = 0;
		var text2=0;
		var ordercount=0;
		
		$(".tablebt").click(function(){
			
			
			if(tablecount==0){
				tablecount++;
			$(this).removeClass("btn-outline-success");
			$(this).addClass("btn-danger");
			text=$(this).prop("value");
			// alert(text);
			 $("#tlist").val(text);
			}
			else
				alert("You cant select multiple table");
			
			
	    });
		
        $(".tablebtnMerge").click(function(){
			
			
			
			
			$(this).removeClass("btn-outline-success");
			$(this).addClass("btn-danger");
			text=$(this).prop("value");
			// alert(text);
			var value = $("#tlistMerge").val();
			if(value=="a")
				{
				  $("#tlistMerge").val(text);
				}
			else
				{
				value = value +","+  text;
				 $("#tlistMerge").val(value);
				}
			
			
			
	    });
		
		
		$(".tableli").click(function(){
			
			if(captaincount==0){
				captaincount++;
			//$(this).removeClass("btn-outline-success");
			$(this).addClass("bg-danger");
			$(this).addClass("text-light");
			text2=$(this).text();
			// alert(text);
			 $("#clist").val(text2);
			}
			else
				alert("You cant select multiple table");
	    });
		
		
		
		
		
		$(".btnorder").click(function(){
			ordercount=0;
			var quantity= 1;
			
			var count=0;
			
			var totalprice=parseInt($("#itemtotalprice").text());
			 var currentRow=$(this).closest("tr");
			 var col1=currentRow.find("#itemid").html();
			 var col2=currentRow.find("#itemname").html();
			 var col3=currentRow.find("#itemprice").html();
			 
			 
			 
			var table = document.getElementById("myordertable");
			var tr = table.getElementsByTagName("tr");
			for(var i=0;i<tr.length;i++)
				{
				   if(col1==($(tr[i]).find("td:eq(1)").html())){
					   quantity=($(tr[i]).find("td:eq(3)").html());
					   quantity++;
					   $(tr[i]).find("td:eq(3)").html(quantity);
					   $(tr[i]).find("td:eq(4)").html(quantity*col3);
					 
					   ordercounts= ($(tr[i]).find("td:eq(0)").html());
					   count++;
					   
				   }
				 
				   ordercount++;
				}
			
			if(count==0){
				 $('#myordertable ').append('<tr><td>'+ordercount+'</td><td id="orderid">'+col1+'</td><td>'+col2+'</td><td>'+quantity+'</td><td>'+col3+'</td></tr>');
				
				  
			}
				 $('#myordertable tr td:nth-child(2)').hide();
				
				 $("#itemtotalprice").text(totalprice+parseInt(col3));  
				
		});
		
		
	

		$(".btntoder").click(function(){

			var id=new Array();
			var quan=new Array();

			 
			 
			var table = document.getElementById("myordertable");
			
			var tr = table.getElementsByTagName("tr");
			
			for(var i=0;i<tr.length;i++)
				{
				  	  
					  
					   
				  
				 
				 id.push( $(tr[i]).find("td:eq(1)").html());
				 quan.push(($(tr[i]).find("td:eq(3)").html()));
				}
			
				
				 $("#tid").val(id);
				 $("#tquan").val(quan);
				 $("#plist").val(($("#itemtotalprice").text()));
		});


		$(".button1").click(function(){
			
			 var currentRow=$(this).closest("tr");
			 var col1=currentRow.find("#kotid").html();
			
			$("#kotorderid").val(col1);
			
			
		});
		
		$(".TableShift").click(function(){
			
			 var currentRow=$(this).closest("tr");
			 var col1=currentRow.find("#kotid").html();
			
			$("#kotshiftid").val(col1);
			
			
		});
		
		$(".TableMerge").click(function(){
			
			 var currentRow=$(this).closest("tr");
			 var col1=currentRow.find("#kotid").html();
			
			$("#kotMergeid").val(col1);
			
			
		});
		
		$(".TableGenerateBill").click(function(){
			
			 var currentRow=$(this).closest("tr");
			 var col1=currentRow.find("#kotid").html();
			
			$("#kotgeneratebillid").val(col1);
			
			
		});
		
		
		
		 
		
});




