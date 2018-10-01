    <div class="card mb-2 p-3 text-light  " style="width: 30rem; border: 3px solid black; background-color:#242752;">
        <div class="news__intro" style="background-image: url(<?= get_the_post_thumbnail_url(); ?>);">
        </div>
        <div class="news__info text-center">
            <p class="">Jeu: <?= get_game(get_the_ID()); ?></p>
        </div>
        <div class="news__content card-body d-flex flex-column">
            <div>
                <h3 class="news__tournament"><?php the_title() ; ?></h3>
                <p class="card-text"> <?php the_content() ; ?></p>
            </div>
            
        </div>
            <div class="container">
                <a href="<?= get_the_permalink(get_the_ID()) ; ?>"> <button class='myButt one' type="submit" value="Creer team">
                    <div class='insider'></div>
                    S'inscrire
                </button>
                </a>
            </div>
    </div>