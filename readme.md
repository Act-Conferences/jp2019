---
vim: et ts=2 sts=2 sw=2
title: site journées perl
keywords: perl hackathon workshop perl6 perl5 meeting
author: Marc Chantreux <marc.chantreux@renater.fr>
---

repo for the [Act](http://act.mongueurs.net/) website of [journées perl 2019](https://journeesperl.fr/jp2019/)

# usage

the content if this site use [template toolkit](https://metacpan.org/pod/Template) at server side. pages are stored in
`actdocs/static/` while layouts (wrappers) and widgets are stored in `actdocs/templates`.

i don't want to edit the pages directly so the code to edit lives in `src` using the (pug)[http://pugjs.org/] and you have to process them using `make` before pushing them.

# useful vim macros there

    inoremap @@ #[a(href="") ]<c-o>F"
    inoremap ## [%#<cr><cr><cr><cr>%]<c-o>2k

# todo

* reactivations dans actdocs/templates/menus/information
* actdocs/src/index-fr.md status: translate-en:0% review:0%
* revoir code of conduct
* organiser/annoncer le social event ?

//- # les trucs a dire
//-
//- un grand merci aux associations locales du logiciel libre pour leur soutient
//- (ARN et hackstub)
//- pendant les TPC::NA ... désolé: on va tenter de livestream

//- 
//- h2
//-     t
//-         fr nouveau format
//-         en new format
//- 
//- <h2><t><fr>nouveau format</fr><en>new format</en></t></h2>
//- <p>Perl est souvent présent dans de nombreux systèmes d’information, parfois de manière stratégique et centrale. Tous ces logiciels sont maintenus par des communautés dévouées et ont en commun un usage intensif de l’ecosystème CPAN comme outils de mutualisation de l’experience et des outils.</p>
//- <p>Nous avons besoin de partager nos nos idées, nos pratiques, nos bibliothèques et pourquoi pas nos projets. Créer un évenement qui permettent de réunir les développeurs pour renforcer nos liens techniques (contribution à des bibliothèques génériques, connecteurs entre les différents outils, définition de projets communs) et faciliter les échanges nous parait indispensable.</p>
//- <p>Rassemblez vos développeurs, venez coder: on s’occupe du reste. Voilà l’esprit de cette édition des journées Perl qui fait donc la part belle aux hackathons et aux ateliers. Les conférenciers sont toutefois les bienvenus.</p>
//- <p>Autre nouveauté des journées Perl: nous sommes ravis d’accueillir les membres des communautés Guile et Guix qui viendront nous faire découvrir leurs joyaux et profiter de l’ambiance dynamique pour avancer sur leurs projets.</p>
//- 
//- 
//- 
//- <p>
//- <t>
//- <fr>Par la volonté de l'Association et gr&acirc;ce &agrave; la 
//- g&eacute;n&eacute;rosit&eacute; de nos <a href="[% make_uri('sponsorship.html') %]">sponsors</a>,
//- l'acc&egrave;s aux conf&eacute;rences est totalement gratuit.
//- <br />
//- Merci néanmoins de vous inscrire sur le site si vous comptez venir.<br />
//- Cela vous permettra :</fr>
//- <en>The French Perl Mongers want this event to be free. And thanks to the 
//- generosity of our <a href="[% make_uri('sponsorship.html') %]">sponsors</a>, it is possible.<br />
//- Nevertheless organizers would appreciate if you register (if you plan to come).
//- <br />
//- Registering will allow you to:</en>
//- </t>
//- </p>
//- 
//- [%# A ameliorer sensiblement %]
//- <ul><t>
//-     <fr>
//-     <li>de vous connecter au wiki et prendre part aux échanges (la réservation pour le resto ou l'hébergement se fera par ce biais) ;</li>
//-     <li>d'annoncer votre présence aux présentations qui vous intéressent, ce qui permet aux organisateurs de gérer des détails techniques ;</li>
//-     <li>de complèter votre profil afin de garder une trace de votre passage à l'événement (bien pratique quand on ne sait plus avec qui, quand et où on a discuté) et de renseigner la taille de votre T-shirt !!!</li>
//-     </fr>
//-     <en>
//-     <li>connect to the wiki, and interact with others attendees (registering for the social event or the accommodation will be managed by this mean);</li>
//-     <li>inform others of your attendance on talks you are interested in, so that organisators can handle technical details;</li>
//-     <li>to complete your profile to keep testimonial of your journey (useful when you can't remember when, where and who you talked with), and to fill the size for your T-shirt!!!</li>
//-     </en>
//-     </t>
//- </ul>
//- 
//- <h2>
//- 	<t>
//- 		<fr>Appel à participation</fr>
//- 		<en>Call for contribution</en>
//- 	</t>
//- </h2>
//- 
//- <p></p>
//- 
//- <p>
//- 	<t>
//- 		<fr>Sans vous, cette conférence ne peut avoir lieu. Inscrivez-vous le plus tôt possible ! Proposez-nous des interventions, venez rencontrer d'autres programmeurs qui veulent connaître votre travail, apprendre de votre expérience ou vous aider ! Plus tôt nous saurons combien de participants seront présents, meilleure sera notre organisation. Nous avons besoin de vous pour rendre ces Journées Perl non seulement enrichissantes pour tous, mais surtout passionnantes ! À bientôt !
//- 		</fr>
//- 		<en>Whithout you, this conference can't be held. Register as soon as possible, the quicker the better! We are inviting you to submit your papers, come to meet others coding enthusiasts ready to learn about your work, your skills and experience, or helping you! The quicker we know how many attendees will join us the better the organisation will be. We need you to contribute for rewarding and exciting French Perl Workshop! See you there!
//- 	</t>
//- </p>
//- <!--
//- <p>Nous sommes aussi à la recherche de sponsors (TODO: ici lien sponsor).</p>
//- -->
//- 
//- <h2>
//- 	<t>
//- 		<fr>Entreprises</fr>
//- 		<en>Companies</en>
//- 	</t>
//- </h2>
//- 
//- <p>
//- 	<t>
//- 		<fr>Vous voulez renforcer votre équipe Perl ? Venez prendre contact avec les acteurs du monde Perl, effectuez des recrutements.
//- 		</fr>
//- 		<en>You want your Perl team to grow stronger? You can contact actors from Perl world, and recruit them!
//- 		</en>
//- 	</t>
//- </p>
//- 
//- <p>
//- 	<t>
//- 		<fr>Vous avez des problématiques à gérer dans votre entreprise ? Venez discuter avec les membres actifs de la communauté qui proposent un service professionnel par les voies du développement, du conseil ou de la formation.</fr>
//- 		<en>You have issues to solve in your company? Come and talk to active members of the community offering a professional service in term of development, consulting or training.</en>
//- 	</t>
//- </p>
//- 
//- <p>
//- 	<t>
//- 		<fr>Vous êtes simplement curieux ou indécis ? Le dynamisme de la communauté, la grande diversité des usages, la puissance des outils ou la réactivité de la communauté vous aideront peut-être à vous décider.</fr>
//- 		<en>You're just curious or undecided? The vitality of the community, the wide variety of applications, the strong tools or the responsiveness of the community may help you make up your mind.</en>
//- 	</t>
//- </p>
//- 
//- 
//- <h2>
//- 	<t>
//- 		<fr>Développeurs Perl</fr>
//- 		<en>Perl Developers</en>
//- 	</t>
//- </h2>
//- 
//- <p>
//- 	<t>
//- 		<fr>Depuis la sortie de Perl 5.10, le langage évolue très vite : nouvelles fonctionnalités, nouvelles pratiques et nouveaux frameworks balayent petit à petit les anciennes pratiques et le rythme de publication ne semble pas être menacé. Moose, Plack, Dancer, les captures nommées ne font pas encore partie de votre quotidien ? Venez découvrir ce que le présent et l'avenir vous réservent !</fr>
//- 		<en>Since the release of Perl 5.10, the language is changing very quickly: new features, new practices and new frameworks slowly sweep past practices away and the publishing rate does not seem to be threatened. Moose, Plack, Dancer, named captures are not yet part of your daily life? Find out what the present and the future hold!</en>
//- 	</t>
//- </p>
//- 
//- <p>
//- 	<t>
//- 		<fr>Venez rencontrer des mainteneurs de modules du CPAN, des membres de p5p…</fr>
//- 		<en>Come to meet CPAN modules maintainers, p5p members…</en>
//- 	</t>
//- </p>
//- 
//- <h2>
//- 	<t>
//- 		<fr>Étudiants</fr>
//- 		<en>Students</en>
//- 	</t>
//- </h2>
//- 
//- <p>
//- 	<t>
//- 		<fr>En plus d'être puissant et expressif, Perl est aussi le fruit d'une grande diversité culturelle : apprendre Perl est une bonne façon cohérente de découvrir et intégrer des paradigmes et des approches diverses.</fr>
//- 		<en>In addition to being powerful and expressive, Perl is also the result of great cultural diversity: learning Perl is a good way to discover and integrate coherent paradigms and several approaches.</en>
//- 	</t>
//- </p>
//- 
//- <h2>
//- 	<t>
//- 		<fr>Professionnels de l'informatique, technophiles, amoureux du libre ou simples curieux</fr>
//- 		<en>IT professionals, techies, open source enthusiasts or just curious</en>
//- 	</t>
//- </h2>
//- 
//- <p>
//- 	<t>
//- 		<fr>Que vous soyez programmeurs ou non, connaisseurs de Perl ou d'autres langages, vous pourrez profiter de l'expertise des meilleurs programmeurs Perl et découvrir la puissance de Perl au service de projets importants dans un moment convivial.</fr>
//- 		<en>Whether you are a coder or not, expert of Perl or other languages, you can benefit from the expertise of the best Perl programmers and discover the power of Perl serving important projects during a convivial moment.</en>
//- 	</t>
//- </p>
//- <p>
//- <t>
//- <fr>
//- Plus d'information ici m&ecirc;me d'ici quelques jours.
//- </fr>
//- <en>
//- More information on that site soon.
//- </en>
//- </t>
//- </p>
//- 
//- 
//- [% news = global.news(3);
//-    IF news.size > 2;
//-      more = news.pop;
//-    END;
//-  %]
//- 
//- [% IF news.size %]
//- <h2>Latest News</h2>
//- [% FOREACH item = news %]
//- <div class="news-entry">
//-  <h3 class="news-header">
//-   <span class="news-date">[% date_format(item.datetime, 'date_short') %]</span>
//-   <span class="news-title">[% item.title %]</span>
//-  </h3>
//-  <div class="news-text">
//-   [% item.content %]
//-  </div>
//- </div>
//- [% END %]
//- [% END %]
//- 
//- [% IF more %]
//- <p>
//-  <a href="[% make_uri('news') %]" class="news-link">Older announcements</a>
//- </p>
//- [% END %]
//- 
