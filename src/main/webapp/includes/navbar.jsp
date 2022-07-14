<nav class = "navbar navbar-expand-lg navbar-dark bg-success">
	<a class = "navbar-brand" href = "index.jsp">
		<h4><img src = "https://cdn.vectorstock.com/i/1000x1000/00/08/shopping-bag-icon-simple-style-vector-11690008.webp" width = "50" height = "50"> My Ecom App</h4>
	</a>
  	<button class = "navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    	<span class = "navbar-toggler-icon"></span>
  	</button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp"><button type="button" class="btn btn-success">
        	<img src = "https://www.rawshorts.com/freeicons/wp-content/uploads/2017/01/black_repicthousebase_1484336385-1.png" width = "30" height = "30" class = "d-inline-block align-top"><h6>Home</h6>
        </button>
        </a>
      </li>
    
      <% 
      if(auth != null) 
		 { %>
			 <li class="nav-item active">
		        <a class="nav-link" href="orders.jsp"><button type="button" class="btn btn-success">
		        	<img src = "https://cdn3.iconfinder.com/data/icons/e-commerce-vol-interactions/80/package-order-ready-checkmark-512.png" width = "30" height = "30" class = "d-inline-block align-top"><h6>Orders</h6>
		        </button>
		        </a>
		     </li>
		      
		     <li class="nav-item active">
		        <a class="nav-link" href="logout"><button type="button" class="btn btn-success">
		        	<img src = "https://www.svgrepo.com/show/79009/logout.svg" width = "30" height = "30" class = "d-inline-block align-top"><h6>Logout</h6>
		        </button>
		        </a>
		     </li>
		 <%    
		 }
		 
		  else 
		 { %>   
		      <li class="nav-item active">
        		<a class="nav-link" href="registration.jsp"><button type="button" class="btn btn-success">
        			<img src = "https://icon-library.com/images/register-icon/register-icon-6.jpg" width = "30" height = "30" class = "d-inline-block align-top"><h6>Register</h6>
        		</button>
        		</a>
      		  </li>
      		
      		  <li class="nav-item active">
		        <a class="nav-link" href="login.jsp"><button type="button" class="btn btn-success">
		        	<img src = "https://pic.onlinewebfonts.com/svg/img_411076.png" width = "30" height = "30" class = "d-inline block align-top"><h6>Login</h6>
		        </button>
		        </a>
		     </li>
		<% } %>
		
		<li class="nav-item active">
        <a class="nav-link" href="cart.jsp"><button type="button" class="btn btn-success">
        	<img src = "https://www.nicepng.com/png/full/285-2851817_add-to-cart-ecosystems-icon.png" width = "30" height = "30" class = "d-inline-block align-top"><h6>Cart</h6>
        </button>
        </a>
      </li>
    </ul>
  </div> 
</nav>