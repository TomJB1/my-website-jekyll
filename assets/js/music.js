const music = [{
    name: "Summertime",
    artist: "Full Throttle",
    artist_link: "https://fullthrottle2020.bandcamp.com/",
    audio_link: "/assets/music/Full Throttle - Summertime.mp3"
},
{
    name: "Vodka Lemonade",
    artist: "shitty kickflips",
    artist_link: "https://shittykickflips.bandcamp.com/",
    audio_link: "/assets/music/shitty kickflips - EVERYTHING ROCKS!!! ...FOREVER-! - 01 Vodka Lemonade.mp3"
},
{
    name: "Braces v2.0",
    artist: "Lamonta",
    artist_link: "https://lamonta.bandcamp.com/",
    audio_link: "/assets/music/Lamonta - Braces (Digital 7-) - 01 Braces v2.0.mp3"
},
{
    name: "One for All",
    artist: "Holly Would Surrender",
    artist_link: "https://hollywouldsurrender.bandcamp.com/",
    audio_link: "/assets/music/Holly Would Surrender - Kaleidoscope - 06 All for One.mp3"
}]
music_div = document.getElementById("music");
i=0;

description_text = document.createElement("span");
music_div.appendChild(description_text);

music_audio = document.createElement("audio");
music_audio.id = "music_audio";
music_audio.controls = true;
music_audio.addEventListener("ended", play, false);
music_div.appendChild(music_audio);

skip_button = document.createElement("button");
skip_button.innerText = "skip"
skip_button.addEventListener("click", play, false);
music_div.appendChild(skip_button);

play()

function play() {
    if(i>music.length-1)
    {
        i=0;
    }

    if(i!=0)
    {
        music_audio.autoplay = true;
    }

    music_audio.src = music[i].audio_link;
    description_text.innerHTML = `Now playing... ${music[i].name} by <a href="${music[i].artist_link}">${music[i].artist}</a>: `;
    i++;
}
