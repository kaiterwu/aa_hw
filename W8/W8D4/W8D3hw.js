// Technically hw for W8D3 but is being done for W8D4 

function titleize(names,callback) {
    let titleized = names.map(name => `Mx. ${name} Jingleheimer Schmidt`);
    callback(titleized);
};

titleize(["Mary", "Brian", "Leo"], (names) => {
    names.forEach(name => console.group(name));
});

function Elephant(name,height,tricks) {
    this.name = name 
    this.height = height 
    this.tricks = tricks 
}

Elephant.prototype.trumpet = function () {
    console.log(`${this.name} the elephant goes 'phrRRRRRRRRRRR!!!!!!!'`);
};

Elephant.prototype.grow = function () {
    this.height = this.height + 12 
}

Elephant.prototype.addTrick = function(trick) { 
    this.tricks.push(trick);
}

Elephant.prototype.play = function() {
    trickIndex = Math.floor(Math.random() * this.tricks.length);
  console.log(`${this.name} is ${this.tricks[trickIndex]}!`);
}