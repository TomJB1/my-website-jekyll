things = document.getElementsByClassName("thing")
selectors = document.getElementsByClassName("selector")
skillSection = document.getElementById("select-skills")
let skills = {}

function create_button(skill_name) {
    label = document.createElement("label")
    label.innerText=skill_name+" "
    label.classList.add("selector-label")

    checkbox=document.createElement("input")
    checkbox.type="radio"
    checkbox.classList.add("selector")
    checkbox.addEventListener("click", filter)
    checkbox.dataset.tagNames=skill_name
    label.append(checkbox)
    skillSection.append(label)
    return checkbox
}

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
        if(skill!="thing" && skill!="ALL"){
            skills[skill]=true
        }
    }
}

create_button("ALL").checked = true
for (let skill of Object.keys(skills)) {
    create_button(skill)
}