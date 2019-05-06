<!DOCTYPE html>
<html>
    <style>
        #about .column {
            float: left;
            width: 33.33%;
            padding: 5px;
        }
        #about .row::after {
            content: "";
            clear: both;
            display: table;
        }
        .quotation {
            font-size: 30px;
            margin: 0 auto;
            quotes: "\201C""\201D""\2018""\2019";
            padding: 10px 20px;
            line-height: 1.4;
        }
        .quotation:before {
            content: open-quote;
            display: inline;
            height: 0;
            line-height: 0;
            left: -10px;
            position: relative;
            top:30px;
            color: #ccc;
            font-size: 3em;
        }
        .quotation::after {
            content: close-quote;
            display: inline;
            height: 0;
            line-height: 0;
            left: 10px;
            position: relative;
            top: 35px;
            color: #ccc;
            font-size: 3em;
        }
        .aboutFormat {
            column-count: 3;
            column-gap: 30px;
            text-align: justify;
            padding: 10px 20px;
        }
    </style>
    
<body>
    <h2>About Us</h2>
 <Br>
    <div class="container" id="about">
        <div class="row">
            <div class="column">
                <img src="views/images/standard/aboutLeft.jpg" id="about" alt="left facing line up photo" style="width:100%">
            </div>
            <div class="column">
                <img src="views/images/standard/aboutMiddle.jpg" id="about" alt="middle facing line up photo" style="width:100%">
            </div>
            <div class="column">
                <img src="views/images/standard/aboutRight.jpg" id="about" alt="right facing line up photo" style="width:100%">
            </div>
        </div>
            </div>
 <br>
 <blockquote>
     <p class="quotation">
         A PARTY WITHOUT CAKE IS JUST A MEETING.
     </p>
 </blockquote>
 <div class="aboutFormat">
     <p>
         The party began on a winters day in November 2018. A group of ladies from across London, some even further afield, gathered together to find out what was involved in Get into Tech. A lucky 18 got selected to join what became known as "the Wednesday group".
         An intensive week of boot camp training began in late January. Tears were shed and glasses of water were knocked. But most importantly the seeds of coding were sewn.
         Over the next five months these eighteen ladies tried and tested methods, functions and objects not yet known to humankind. However the best was yet to come.
         A final project group was formed in early April, comprised of six food loving coders. What came next was inevitable - a food blog! Putting their skills to the best use possible, they set themselves the target of creating an inspiring yet informative food blog that would change the course of history.
         The sizzling six are none other than:
     <ul>
         <li><strong>Keiko</strong> - ultimate scrum (and GIT) master, leading the group to success</li>
         <li><b>Rosa</b> - the technical knowledge guru, and hostess with the most-est</li>
         <li><b>Kylie</b> - whizz kid at all things plug ins and what a blog should actually do</li>
         <li><b>Dee</b> - footer extraordinaire and multi-tasker pro </li>
         <li><b>Kim</b> - database queen! If you want it she'll make it happen</li>
         <li><b>Eriko</b> - if you want some fun photos and blurb, she's your gal!</li>
     </ul>
         "What are the results?!?" I hear you cry! Well cry no more. We are delighted to present you with WTF. Your one stop shop for all things food - where to get it, how to make it and what to make of it. You've just joined the best party in town.
     </p>
     <br>
 </div>
</body>
</html>