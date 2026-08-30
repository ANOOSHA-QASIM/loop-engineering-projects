const fs = require("fs");

console.log("Kaam shuru ho gaya... report tayyar ho rahi hai");

setTimeout(() => {
  fs.writeFileSync("report_ready.txt", "Report tayyar!");
  console.log("Kaam khatam ho gaya!");
}, 90000); // 90000 milliseconds = 90 seconds