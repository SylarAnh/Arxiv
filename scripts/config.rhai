let titles_type = ["Dataset", "Survey", "Review", "Overview"];
let titles_model = ["SLAM", "Multi", "Multi-Robot", "UWB", "Distributed", "Decentralized", "Swarm"];
let titles_method = ["LLM", "RL"];
let titles =  titles_model + titles_method + titles_type;
let authors_array = ["Fei Gao", "Shaojie Shen", "Lihua Xie", "Boyu Zhou", "Fu Zhang"];

let conferences = [
    // AI
    "AAAI", "AAMAS", "ACM MM", "AISTATS", "ALT", "CEC", "ECAI", "FUZZ IEEE", "GECCO", "ICANN", "ICAPS", "ICCBR", "ICONIP", "ICRA", "ICTAI", "IJCAI", "IJCNN", "IROS", "KR", "KSEM", "SIGGRAPH", "STOC", "UAI", "PPSN", "PRICAI", "TAAI",
    // RO
    "IROS", "ICRA", "T-RO", "IJRR", "SSR"
];

let start = conferences.shift();
let conferences_rg = conferences.reduce(|sum, v| sum + "|" + v, start);
let conferences_rg = "(" + conferences_rg + ")([\\s'-]*\\d+)?";

let start = titles.shift();
let title_rg = titles.reduce(|sum, v| sum + "|" + v, start);

let start = authors_array.shift();
let authors_rg = authors_array.reduce(|sum, v| sum + "|" + v, start);

export title_rg;
export authors_rg;
export conferences_rg;
