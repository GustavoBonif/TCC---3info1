<?php

include ('cabecalho.php');

?>

<div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100 imagemCarroussel" src="<?php echo base_url('assets/imagens/1.jpg')?>" alt="Primeiro Slide">
        <div class="carousel-caption d-none d-md-block">
		    <!-- <h5>1111111111111111</h5>
		    <p>ASADJSKDJSKDJKS</p> -->
		</div>
    </div>
    <div class="carousel-item">
      <img class="d-block w-100 imagemCarroussel" src="<?php echo base_url('assets/imagens/2.jpg')?>">
      	<div class="carousel-caption d-none d-md-block">
		    <!-- <h5>2222222222222</h5>
		    <p>ASADJSKDJSKDJKS</p> -->
		</div>
    </div>
    <div class="carousel-item">
      <img class="d-block w-100 imagemCarroussel" src="<?php echo base_url('assets/imagens/3.jpg')?>">
      <div class="carousel-caption d-none d-md-block">
		    <!-- <h5>3333333333333</h5>
		    <p>ASADJSKDJSKDJKS</p> -->
		</div>
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleFade" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Anterior</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleFade" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Próximo</span>
  </a>
</div>

<div class="departamentos" >
    <div class="row" >  
      <div class="col-3 fundoMenuVertical" >
        <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical" >

          <a class="nav-link active itensMenuVertical" id="v-pills-prematuro-tab" data-toggle="pill" href="#v-pills-prematuro" role="tab" aria-controls="v-pills-prematuro" aria-selected="true" style="margin-top: 15%">Prematuro</a>

          <a class="nav-link itensMenuVertical" id="v-pills-crianca-tab" data-toggle="pill" href="#v-pills-crianca" role="tab" aria-controls="v-pills-crianca" aria-selected="false" style="margin-top: 3%">Criança</a>

          <a class="nav-link itensMenuVertical" id="v-pills-adolescente-tab" data-toggle="pill" href="#v-pills-adolescente" role="tab" aria-controls="v-pills-adolescente" aria-selected="false" style="margin-top: 3%">Adolescente</a>

          <a class="nav-link itensMenuVertical" id="v-pills-adulto-tab" data-toggle="pill" href="#v-pills-adulto" role="tab" aria-controls="v-pills-adulto" aria-selected="false" style="margin-top: 3%">Adulto</a>

          <a class="nav-link itensMenuVertical" id="v-pills-idoso-tab" data-toggle="pill" href="#v-pills-idoso" role="tab" aria-controls="v-pills-idoso" aria-selected="false" style="margin-top: 3%">Idoso</a>

          <a class="nav-link itensMenuVertical" id="v-pills-gestante-tab" data-toggle="pill" href="#v-pills-gestante" role="tab" aria-controls="v-pills-gestante" aria-selected="false" style="margin-top: 3%">Gestante</a>

          <a class="nav-link itensMenuVertical" id="v-pills-ocupacional-tab" data-toggle="pill" href="#v-pills-ocupacional" role="tab" aria-controls="v-pills-ocupacional" aria-selected="false" style="margin-top: 3%">Ocupacional</a>

           <a class="nav-link itensMenuVertical" id="v-pills-imunodeficiente-tab" data-toggle="pill" href="#v-pills-imunodeficiente" role="tab" aria-controls="v-pills-imunodeficiente" aria-selected="false" style="margin-top: 3%">Imunodeficiente</a>

        </div>
      </div>
      <div class="col-9" style="padding: 5%;">
        <div class="tab-content" id="v-pills-tabContent">
          <div class="tab-pane fade show active" id="v-pills-prematuro" role="tabpanel" aria-labelledby="v-pills-prematuro-tab">
                <div class="jumbotron" style="background-color: white">
                  <img src="<?php echo base_url('assets/imagens/iconeprematuro.png')?>" class="icones">
                  <h1 class="display-4 tituloDepartamento">Olá, pais!</h1>
                  <p class="lead text1Departamento">Seu filho deverá receber todas as vacinas como todas as crianças nascidas a termo. O seu bebê fará um calendário especial durante um período de sua vida e depois seguirá o calendário normal conforme a data de nascimento. (Confira o calendário da criança e o calendário do adolescente)</p>
                  <hr class="my-4">
                  <p class="text1Departamento">A vacinação de pessoas de convívio intimo e/ou cuida do prematuro deverão ser vacinadas ou estar com seu calendário vacinal em dia que inclui principalmente as vacinas: coqueluche, influenza, varicela, sarampo, caxumba e rubéola.</p>
                  <a class="btn btn-primary btn-lg textLinkDepartamento" href="#" role="button" style="border-radius: 40px">Saiba mais</a>
                </div>              
          </div>
          <div class="tab-pane fade" id="v-pills-crianca" role="tabpanel" aria-labelledby="v-pills-crianca-tab">
                <div class="jumbotron" style="background-color: white;">
                  <img src="<?php echo base_url('assets/imagens/iconecrianca.png')?>" class="icones">
                  <h1 class="display-4 tituloDepartamento">Crianças</h1>
                  <p class="lead text1Departamento">Recomendações da Sociedade Brasileira de Pediatria (SBP) e Sociedade Brasileira de Imunizações (SBIm) – 2017/2018</p>
                  <hr class="my-4">
                  <p class="text1Departamento">Para definir vacinas e esquemas de doses, considerar a orientação do médico assistente que irá atualizar o calendário vacinal a ser seguido.</p>
                  <a class="btn btn-primary btn-lg textLinkDepartamento" href="#" role="button" style="border-radius: 40px">Saiba mais</a>
                </div>   
          </div>
          <div class="tab-pane fade" id="v-pills-adolescente" role="tabpanel" aria-labelledby="v-pills-adolescente-tab">
                <div class="jumbotron" style="background-color: white">
                  <img src="<?php echo base_url('assets/imagens/iconeadolescente.png')?>" class="icones">
                  <h1 class="display-4 tituloDepartamento">Adolescente</h1>
                  <p class="lead text1Departamento">Recomendações da Sociedade Brasileira de Pediatria (SBP) e Sociedade Brasileira de Imunizações (SBIm) – 2017/2018.</p>
                  <hr class="my-4">
                  <p class="text1Departamento">Para definir vacinas e esquemas de doses, considerar a orientação do médico assistente que irá atualizar o calendário vacinal a ser seguido. </p>
                  <a class="btn btn-primary btn-lg textLinkDepartamento" href="#" role="button" style="border-radius: 40px">Saiba mais</a>
                </div>   
          </div>
          <div class="tab-pane fade" id="v-pills-adulto" role="tabpanel" aria-labelledby="v-pills-adulto-tab">
                <div class="jumbotron" style="background-color: white">
                  <img src="<?php echo base_url('assets/imagens/iconeadulto.png')?>" class="icones">
                  <h1 class="display-4 tituloDepartamento">Hello, world!</h1>
                  <p class="lead text1Departamento">This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.</p>
                  <hr class="my-4">
                  <p class="text1Departamento">It uses utility classes for typography and spacing to space content out within the larger container.</p>
                  <a class="btn btn-primary btn-lg textLinkDepartamento" href="#" role="button" style="border-radius: 40px">Saiba mais</a>
                </div>  

          <div class="tab-pane fade" id="v-pills-idoso" role="tabpanel" aria-labelledby="v-pills-idoso-tab">
                <div class="jumbotron" style="background-color: white">
                  <img src="<?php echo base_url('assets/imagens/iconeidoso.png')?>" class="icones">
                  <h1 class="display-4 tituloDepartamento">Hello, world!</h1>
                  <p class="lead text1Departamento">This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.</p>
                  <hr class="my-4">
                  <p class="text1Departamento">It uses utility classes for typography and spacing to space content out within the larger container.</p>
                  <a class="btn btn-primary btn-lg textLinkDepartamento" href="#" role="button" style="border-radius: 40px">Saiba mais</a>
                </div> 
          <div class="tab-pane fade" id="v-pills-gestante" role="tabpanel" aria-labelledby="v-pills-gestante-tab">
                <div class="jumbotron" style="background-color: white">
                  <img src="<?php echo base_url('assets/imagens/iconegestante.png')?>" class="icones">
                  <h1 class="display-4 tituloDepartamento">Hello, world!</h1>
                  <p class="lead text1Departamento">This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.</p>
                  <hr class="my-4">
                  <p class="text1Departamento">It uses utility classes for typography and spacing to space content out within the larger container.</p>
                  <a class="btn btn-primary btn-lg textLinkDepartamento" href="#" role="button" style="border-radius: 40px">Saiba mais</a>
                </div> 

          <div class="tab-pane fade" id="v-pills-ocupacional" role="tabpanel" aria-labelledby="v-pills-ocupacional-tab">
                <div class="jumbotron" style="background-color: white">
                  <img src="<?php echo base_url('assets/imagens/iconeocupacional.png')?>" class="icones">
                  <h1 class="display-4 tituloDepartamento">Hello, world!</h1>
                  <p class="lead text1Departamento">This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.</p>
                  <hr class="my-4">
                  <p class="text1Departamento">It uses utility classes for typography and spacing to space content out within the larger container.</p>
                  <a class="btn btn-primary btn-lg textLinkDepartamento" href="#" role="button" style="border-radius: 40px">Saiba mais</a>
                </div>  
          </div>

          <div class="tab-pane fade" id="v-pills-imunodeficiente" role="tabpanel" aria-labelledby="v-pills-imunodeficiente-tab">
                <div class="jumbotron" style="background-color: white">
                  <img src="<?php echo base_url('assets/imagens/iconeimuno.png')?>" class="icones">
                  <h1 class="display-4 tituloDepartamento">Hello, world!</h1>
                  <p class="lead text1Departamento">This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.</p>
                  <hr class="my-4">
                  <p class="text1Departamento">It uses utility classes for typography and spacing to space content out within the larger container.</p>
                  <a class="btn btn-primary btn-lg textLinkDepartamento" href="#" role="button" style="border-radius: 40px">Saiba mais</a>
                </div>  
          </div>

        </div>
      </div>
    </div>
  </div>