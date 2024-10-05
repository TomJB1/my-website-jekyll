things = document.getElementsByClassName("thing")
selectors = document.getElementsByClassName("selector")
skillSection = document.getElementById("select-skills")
let skills = {}

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
        thing.hidden = false
    }
}

function showTagged(skill){
    for (let thing of things) {
        if(thing.classList.contains(skill)){
            thing.hidden = false
        } 
        else{
            thing.hidden = true
        }
    }
}

for (let thing of things) {
    for (let skill of thing.classList) {
        if(skill!="thing"){
            skills[skill]=true
        }
    }
}

for (let skill of Object.keys(skills)) {
    label = document.createElement("label")
    label.innerText=skill+" "
    label.classList.add("selector-label")

    checkbox=document.createElement("input")
    checkbox.type="checkbox"
    checkbox.classList.add("selector")
    checkbox.addEventListener("click", filter)
    checkbox.dataset.tagNames=skill
    label.append(checkbox)
    skillSection.append(label)
}