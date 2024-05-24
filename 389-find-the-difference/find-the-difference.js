var findTheDifference = function(s, t) {
    let charMap = new Map();
    
    [...t].forEach(char => {
        charMap.set(char, (charMap.get(char) || 0) + 1);
    });
    
    [...s].forEach(char => {
        charMap.set(char, charMap.get(char) - 1);
    });
    
    for(let [char, count] of charMap){
        if(count === 1){
            return char;
        }
    }
};
