things = document.getElementsByClassName("thing")
selectors = document.getElementsByClassName("selector")
skillSection = document.getElementById("select-skills")
let tags = {}
console.log(things);

function filter(e) {
    showAll();
    for (let selector of selectors){
        if(selector==e.target){
            if(e.target.checked){
                showTagged(e.target.dataset.tagNames)
            }
        }
        else
        {
            selector.checked = false
        }
    }
}

function showAll(){
    for (let thing of things) {
        thing.classList.remove("hide")
    }
}

function showTagged(tag){
    for (let thing of things) {
        if(thing.classList.contains(tag)){
            thing.classList.remove("hide")
        } 
        else{
            thing.classList.add("hide")
        }
    }
}

for (let thing of things) {
    console.log(thing.classList);
    for (let tag of thing.classList) {
        if(tag!="thing"){
            tags[tag]=true
        }
    }
}
console.log(tags);

for (let tag of Object.keys(tags)) {
    label = document.createElement("label")
    label.innerText=tag+" "
    label.classList.add("selector-label")

    checkbox=document.createElement("input")
    checkbox.type="checkbox"
    checkbox.classList.add("selector")
    checkbox.addEventListener("click", filter)
    checkbox.dataset.tagNames=tag
    label.append(checkbox)
    skillSection.append(label)
}