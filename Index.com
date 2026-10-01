<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>GLOBAL AI LEARNING | Code with Bala</title>

<style>

*{
  margin:0;
  padding:0;
  box-sizing:border-box;
  scroll-behavior:smooth;
}

body{
  font-family:Arial,Helvetica,sans-serif;
  background:#050816;
  color:white;
}

/* HEADER */

header{
  position:sticky;
  top:0;
  z-index:1000;
  background:rgba(5,8,22,.97);
  border-bottom:1px solid #26345c;
  padding:18px 7%;
  display:flex;
  justify-content:space-between;
  align-items:center;
}

.logo{
  font-size:25px;
  font-weight:bold;
  color:#00eaff;
}

.logo span{
  color:white;
}

nav a{
  color:white;
  text-decoration:none;
  margin-left:18px;
  font-weight:bold;
  cursor:pointer;
}

nav a:hover{
  color:#00eaff;
}


/* HERO */

.hero{
  min-height:90vh;
  display:flex;
  justify-content:center;
  align-items:center;
  text-align:center;
  padding:50px 20px;
  background:
  radial-gradient(circle at top,#173c75 0%,#050816 55%);
}

.hero-content{
  max-width:900px;
}

.badge{
  display:inline-block;
  padding:9px 18px;
  border:1px solid #00eaff;
  border-radius:30px;
  color:#00eaff;
  margin-bottom:25px;
}

.hero h1{
  font-size:64px;
  margin-bottom:5px;
}

.hero h1 span{
  color:#00eaff;
}


/* CODE WITH BALA */

.creator-name{
  font-size:18px;
  color:#aebbd5;
  margin-bottom:22px;
  letter-spacing:1px;
}


/* HERO TEXT */

.hero p{
  font-size:20px;
  color:#c9d4ee;
  max-width:750px;
  margin:auto;
}

.buttons{
  margin-top:35px;
}

.btn{
  display:inline-block;
  padding:14px 25px;
  margin:8px;
  border-radius:8px;
  text-decoration:none;
  font-weight:bold;
  cursor:pointer;
}

.primary{
  background:#00eaff;
  color:#03101a;
}

.secondary{
  border:1px solid #00eaff;
  color:#00eaff;
}


/* SECTIONS */

section{
  padding:80px 7%;
}

.title{
  text-align:center;
  margin-bottom:45px;
}

.title h2{
  font-size:40px;
  color:#00eaff;
  margin-bottom:10px;
}

.title p{
  color:#aebbd5;
}


/* CARDS */

.cards{
  display:grid;
  grid-template-columns:
  repeat(auto-fit,minmax(220px,1fr));
  gap:22px;
}

.card,
.project,
.tech{
  background:#10182e;
  border-radius:16px;
  border:1px solid #26345c;
  transition:.3s;
  cursor:pointer;
}

.card{
  padding:30px;
}

.card:hover,
.project:hover,
.tech:hover{
  transform:translateY(-8px);
  border-color:#00eaff;
  box-shadow:
  0 0 20px rgba(0,234,255,.15);
}

.icon{
  font-size:42px;
  margin-bottom:15px;
}

.card h3,
.project h3,
.tech h3{
  color:#00eaff;
  margin-bottom:12px;
}

.card p,
.project p{
  color:#b8c4dd;
  line-height:1.6;
}


/* AI */

.ai-section,
.contact{
  background:#081027;
}

.ai-box{
  max-width:1000px;
  margin:auto;
  padding:40px;
  background:#10182e;
  border:1px solid #26345c;
  border-radius:20px;
  text-align:center;
}

.ai-box h3{
  font-size:30px;
  color:#00eaff;
  margin-bottom:15px;
}

.ai-box p{
  color:#c5d0e5;
  line-height:1.7;
}


/* TECHNOLOGY */

.tech-grid{
  display:grid;
  grid-template-columns:
  repeat(auto-fit,minmax(180px,1fr));
  gap:20px;
}

.tech{
  padding:25px;
  text-align:center;
}


/* PROJECTS */

.project{
  padding:30px;
}


/* ABOUT */

.about{
  max-width:900px;
  margin:auto;
  text-align:center;
}

.about p{
  color:#c3cde0;
  font-size:18px;
  line-height:1.7;
}


/* CONTACT */

.contact{
  text-align:center;
}

.contact p{
  color:#c5d0e5;
  margin-bottom:20px;
}


/* FOOTER */

footer{
  text-align:center;
  padding:30px 15px;
  background:#03050d;
  color:#8f9bb5;
  line-height:1.8;
}

footer strong{
  color:#00eaff;
}


/* POPUP */

.popup{
  display:none;
  position:fixed;
  inset:0;
  background:rgba(0,0,0,.75);
  z-index:5000;
  justify-content:center;
  align-items:center;
  padding:20px;
}

.popup-box{
  width:100%;
  max-width:500px;
  background:#10182e;
  border:1px solid #00eaff;
  border-radius:20px;
  padding:30px;
  text-align:center;
  box-shadow:
  0 0 30px rgba(0,234,255,.25);
}

.popup-box h2{
  color:#00eaff;
  margin-bottom:15px;
}

.popup-box p{
  color:#c5d0e5;
  line-height:1.7;
  margin-bottom:20px;
}

.close-btn{
  border:none;
  background:#00eaff;
  color:#03101a;
  padding:12px 25px;
  border-radius:8px;
  font-weight:bold;
  cursor:pointer;
}


/* MOBILE */

@media(max-width:700px){

  header{
    flex-direction:column;
    gap:15px;
  }

  nav{
    text-align:center;
  }

  nav a{
    display:inline-block;
    margin:5px 6px;
    font-size:14px;
  }

  .hero h1{
    font-size:42px;
  }

  .creator-name{
    font-size:16px;
  }

  .hero p{
    font-size:17px;
  }

  .title h2{
    font-size:32px;
  }

  section{
    padding:60px 5%;
  }

  .ai-box{
    padding:25px;
  }

}

</style>
</head>


<body>


<!-- HEADER -->

<header>

  <div class="logo">
    GLOBAL <span>AI LEARNING</span>
  </div>

  <nav>

    <a href="#home">Home</a>

    <a href="#learning">Learning</a>

    <a href="#ai">AI</a>

    <a href="#technology">Technology</a>

    <a href="#projects">Projects</a>

    <a href="#about">About</a>

  </nav>

</header>



<!-- HOME -->

<section class="hero" id="home">

  <div class="hero-content">

    <div class="badge">
      🚀 Future of Learning
    </div>


    <h1>
      GLOBAL <span>AI LEARNING</span>
    </h1>


    <div class="creator-name">
      Code with Bala
    </div>


    <p>
      Learn Artificial Intelligence, Coding,
      Web Development and Future Technologies —
      all in one place.
    </p>


    <div class="buttons">

      <a href="#learning"
         class="btn primary">

        Start Learning

      </a>


      <a href="#projects"
         class="btn secondary">

        Explore Projects

      </a>

    </div>

  </div>

</section>



<!-- LEARNING -->

<section id="learning">

  <div class="title">

    <h2>
      Learning Hub
    </h2>

    <p>
      Build your technology skills step by step.
    </p>

  </div>


  <div class="cards">


    <div class="card"
      onclick="showPopup(
      'Artificial Intelligence',
      'Learn AI concepts, machine learning, intelligent systems and modern AI tools step by step.'
      )">

      <div class="icon">
        🤖
      </div>

      <h3>
        Artificial Intelligence
      </h3>

      <p>
        Tap to explore AI learning.
      </p>

    </div>



    <div class="card"
      onclick="showPopup(
      'Programming',
      'Learn programming fundamentals and build real-world applications using different programming languages.'
      )">

      <div class="icon">
        💻
      </div>

      <h3>
        Programming
      </h3>

      <p>
        Tap to explore Programming.
      </p>

    </div>



    <div class="card"
      onclick="showPopup(
      'Web Development',
      'Learn HTML, CSS and JavaScript and create modern responsive websites.'
      )">

      <div class="icon">
        🌐
      </div>

      <h3>
        Web Development
      </h3>

      <p>
        Tap to explore Web Development.
      </p>

    </div>



    <div class="card"
      onclick="showPopup(
      'Computer Science',
      'Understand algorithms, data structures, software and important computing concepts.'
      )">

      <div class="icon">
        🧠
      </div>

      <h3>
        Computer Science
      </h3>

      <p>
        Tap to explore Computer Science.
      </p>

    </div>


  </div>

</section>



<!-- AI -->

<section class="ai-section" id="ai">

  <div class="title">

    <h2>
      Artificial Intelligence
    </h2>

    <p>
      Explore the technology changing the future.
    </p>

  </div>


  <div class="ai-box">

    <h3>
      AI for Everyone 🌍
    </h3>


    <p>
      Artificial Intelligence helps computers learn,
      understand information, recognize patterns and
      solve complex problems.
    </p>


    <br>


    <p>
      GLOBAL AI LEARNING aims to make AI and technology
      learning simple, practical and accessible.
    </p>


    <button
      class="btn primary"
      onclick="showPopup(
      'AI Learning',
      'Start with AI basics, Machine Learning, Generative AI, AI tools and practical projects.'
      )">

      Explore AI

    </button>

  </div>

</section>



<!-- TECHNOLOGY -->

<section id="technology">

  <div class="title">

    <h2>
      Technology
    </h2>

    <p>
      Tap any technology to learn more.
    </p>

  </div>


  <div class="tech-grid">


    <div class="tech"
      onclick="showPopup(
      'HTML',
      'HTML is used to create the structure of websites.'
      )">

      <div class="icon">
        🌐
      </div>

      <h3>
        HTML
      </h3>

    </div>



    <div class="tech"
      onclick="showPopup(
      'CSS',
      'CSS is used to design and style websites.'
      )">

      <div class="icon">
        🎨
      </div>

      <h3>
        CSS
      </h3>

    </div>



    <div class="tech"
      onclick="showPopup(
      'JavaScript',
      'JavaScript makes websites interactive and dynamic.'
      )">

      <div class="icon">
        ⚡
      </div>

      <h3>
        JavaScript
      </h3>

    </div>



    <div class="tech"
      onclick="showPopup(
      'Python',
      'Python is a popular programming language used in AI, automation and software development.'
      )">

      <div class="icon">
        🐍
      </div>

      <h3>
        Python
      </h3>

    </div>



    <div class="tech"
      onclick="showPopup(
      'C Language',
      'C is a powerful programming language used to understand programming fundamentals and systems.'
      )">

      <div class="icon">
        💻
      </div>

      <h3>
        C Language
      </h3>

    </div>



    <div class="tech"
      onclick="showPopup(
      'Artificial Intelligence',
      'AI enables computers and software to perform tasks that normally require human intelligence.'
      )">

      <div class="icon">
        🤖
      </div>

      <h3>
        AI
      </h3>

    </div>


  </div>

</section>



<!-- PROJECTS -->

<section id="projects">

  <div class="title">

    <h2>
      Projects
    </h2>

    <p>
      Learn by building.
    </p>

  </div>


  <div class="cards">


    <div class="project"
      onclick="showPopup(
      'AI Learning Platform',
      'A future project for learning Artificial Intelligence through lessons, examples and practical activities.'
      )">

      <h3>
        🤖 AI Learning Platform
      </h3>

      <p>
        Tap to explore this project.
      </p>

    </div>



    <div class="project"
      onclick="showPopup(
      'Website Development',
      'Build responsive and modern websites using HTML, CSS and JavaScript.'
      )">

      <h3>
        🌐 Website Development
      </h3>

      <p>
        Tap to explore this project.
      </p>

    </div>



    <div class="project"
      onclick="showPopup(
      'Future Tech Projects',
      'Explore creative technology projects, automation and intelligent applications.'
      )">

      <h3>
        🚀 Future Tech Projects
      </h3>

      <p>
        Tap to explore this project.
      </p>

    </div>


  </div>

</section>



<!-- ABOUT -->

<section id="about">

  <div class="about">

    <div class="title">

      <h2>
        About GLOBAL AI LEARNING
      </h2>

    </div>


    <p>
      GLOBAL AI LEARNING is a technology learning
      project created by Bala Krishna.
    </p>


    <br>


    <p>
      The goal is to learn, create and share knowledge
      about Artificial Intelligence, programming,
      websites and future technologies.
    </p>

  </div>

</section>



<!-- CONTACT -->

<section class="contact" id="contact">

  <div class="title">

    <h2>
      Start Your Journey
    </h2>

    <p>
      Learn today. Build tomorrow. Create the future.
    </p>

  </div>


  <a href="#home"
     class="btn primary">

    Back to Home

  </a>

</section>



<!-- FOOTER -->

<footer>

  <p>
    © 2026
    <strong>
      GLOBAL AI LEARNING
    </strong>
  </p>

  <p>
    Code with Bala
  </p>

</footer>



<!-- POPUP -->

<div class="popup"
     id="popup">

  <div class="popup-box">

    <h2 id="popupTitle">
    </h2>

    <p id="popupText">
    </p>

    <button
      class="close-btn"
      onclick="closePopup()">

      Close

    </button>

  </div>

</div>



<!-- JAVASCRIPT -->

<script>

function showPopup(title,text){

  document.getElementById("popupTitle")
    .innerText = title;

  document.getElementById("popupText")
    .innerText = text;

  document.getElementById("popup")
    .style.display = "flex";

}


function closePopup(){

  document.getElementById("popup")
    .style.display = "none";

}


window.onclick = function(event){

  const popup =
    document.getElementById("popup");

  if(event.target === popup){

    closePopup();

  }

}

</script>


</body>
</html>
