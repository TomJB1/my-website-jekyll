buttons = document.querySelectorAll(".codeblock button")

for (let button of buttons) {
    button.addEventListener("click", copy)
}

async function copy(e)
{
    let text = e.target.parentNode.firstChild.innerText;
    try {
        await navigator.clipboard.writeText(text);
        e.target.innerText = "copied!"
    } catch (err) {
        console.error('Failed to copy: ', err);
    }
    
}
