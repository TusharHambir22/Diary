
<nav class="navbar navbar-expand-lg navbar-dark bg- purple">

<!-- index.jsp file home la click kela ki run honar -->
  <a class="navbar-brand" href="index.jsp">My Dairy</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
      
       <!--       Home var click kela tr index page home page la a gheun janar -->
        <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>

      </li>
      <li class="nav-item">
      
  <!--       Name Change Kela  /jsp file link keli -->
        <a class="nav-link" href="add_notes.jsp">ADD NOTE</a>  
      </li>
     
      
      <li class="nav-item">
        <a class="nav-link " href="all_notes.jsp">Show Notes</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>