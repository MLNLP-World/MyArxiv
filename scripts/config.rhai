let titles_area = ["Test", "Task-oriented", "Goal-oriented", "Conversation", "Dialogue", "Dialog", "Cross-Modal", "Multi-Modal", "MultiModal", "Vision-and-Language", "Vision and Language", "Vision-Language", "Vision Language", "Visual Language","V&L", "Spoken Language Understanding", "SLU", "Language and Vision", "Visual-Linguistic", "Self-supervision", "Language-Image"];
let titles_type = ["Dataset", "Survey", "Review", "Overview"];
let titles_model = ["BERT", "GPT", "Transformer"];
let titles_method = ["Contrastive Learning", "Contrastive", "Pre-train", "Pretrain", "Prompt", "Self-Supervised", "Distillation"];
let titles = titles_area + titles_model + titles_method + titles_type;
let authors_array = ["Kaiming He", "Graham Neubig", "Tie-Yan Liu", "Xipeng Qiu", "Yue Zhang", "Yang liu", "Zhiyuan Liu", "Christopher D. Manning", "Christopher D Manning", "Christopher Manning", "Noah A. Smith", "Jason Eisner", "Percy Liang", "Bill Yuchen Lin", "Li Dong", "Pengfei Liu", "Peter Anderson", "Samuel R. Bowman", "Li Fei-Fei", "Nan Duan", "Kang Liu", "Tang Jie", "Michael I. Jordan", "Steven C.H. Hoi", "Hanwang Zhang", "Caiming Xiong", "Dan Roth", "Yankai Lin", "Mikel Artetxe", "Jian Tang", "Duyu Tang", "Christopher D Manning", "Jason Weston", "William Fedus", "Jason C.S. Wu", "Bing Liu", "Jiawei Han", "Kyunghyun Cho", "Yonglong Tian", "Richard Socher", "Andrew Ng", "Jiatao Gu", "Phillip Isola", "Zhongyu Wei", "Zhou Yu", "Juergen Schmidhuber", "Yejin Choi", "Yoshua Bengio", "Sebastian Ruder", "Zhilin Yang", "Tao Gui", "Zachary C. Lipton", "Jure Leskovec", "Wayne Xin Zhao", "Rico Sennrich", "Jeffrey Pennington", "Wanxiang Che", "Tong Xiao", "Noam Shazeer", "Barret Zoph", "Chris Dyer", "Furu Wei", "Jiang Guo", "Danqi Chen", "Jiajun Wu", "Chris Pal", "Bolei Zhou", "Yoav Goldberg", "Yuchen Zhang", "Quoc V. Le", "Jiasen Lu", "Jing Jiang", "Dzmitry Bahdanau", "Dan Jurafsky", "Yoon Kim", "Wenhu Chen", "Justin Johnson", "Andrej Karpathy", "Ming Zhou", "Ian Goodfellow", "Jianfeng Gao", "Tomas Mikolov", "Geoffrey Hinton", "Yann LeCun", "Hai Zhao", "Xu Sun", "Jiwei Li", "Haifeng Wang", "Luke Zettlemoyer", "ChengXiang Zhai", "Zengfeng Huang", "Tianyang Lin", "Yiheng Shu", "Libo Qin", "Rami Al-Rfou", "Xinlei Chen", "Deng Cai", "Jingjing Xu", "Zhe Gan", "Dhruv Batra", "Devi Parikh", "Zhiting Hu", "Eduard Hovy", "Eric Xing", "Xuezhe Ma", "Hao Tan", "Peng Cui", "Qun Liu", "Qi Wu", "Thomas Wolf", "Qi Zhang", "Amir Zadeh", "Jingjing Liu", "Andrew Zisserman", "Jean-Baptiste Alayrac", "Ivan Laptev", "Dima Damen", "Hang Zhao", "Chen Sun", "Du Tran", "Kai Yu", "Lijuan Wang", "Jianlong Fu", "Lu Yuan"];

let meetings = [
    // AI
    "AAAI", "AAMAS", "ACM MM", "AISTATS", "ALT", "CEC", "ECAI", "FUZZ IEEE", "GECCO", "ICANN", "ICAPS", "ICCBR", "ICONIP", "ICRA", "ICTAI", "IJCAI", "IJCNN", "IROS", "KR", "KSEM", "SIGGRAPH", "STOC", "UAI", "PPSN", "PRICAI", "TAAI",
    // CV
    "3DV", "ACCV", "ACM MM", "BMVC", "CVPR", "ECCV", "ICCV", "ICDAR", "ICIP", "ICME", "ICPR", "IEEE VIS", "MICCAI", "SIGGRAPH", "WACV",
    // DM
    "AKBC", "APWeb", "CIKM", "DASFAA", "ECML-PKDD", "ICDE", "ICDM", "ICDT", "KDD", "LREC", "MDM", "PAKDD", "PODS", "RecSys", "SDM", "SIGMOD", "VLDB", "WSDM", "WWW", "EDBT", "CIDR",
    // IR
    "ECIR", "ESWC", "ICMR", "ICTIR", "ISWC", "SIGIR",
    // ML
    "ACML", "AISTATS", "ECML", "ICLR", "ICML", "ML4H", "NeurIPS", "NIPS", "UAI",
    // NLP
    "AACL", "ACL", "CCL", "COLING", "COLT", "CoNLL", "EACL", "EMNLP", "ICASSP", "ICDAR", "ICONIP", "INTERSPEECH", "LREC", "NAACL", "NLPCC", "RepL4NLP", "SIGDIAL", "SemEval", "WANLP", "WASSA", "WOAH",
    // Arch
    "ASPLOS", "ATC", "DATE", "EuroSys", "FAST", "HPCA", "ISCA", "MICRO", "PPoPP", "SC", "SoCC",
    // System
    "FSE/ESEC", "ICSE", "ISSTA", "OSDI", "SOSP",
    // Security
    "ACSA", "AsiaCCS", "CCS", "DSN", "ESORICS", "EuroS&P", "ICICS", "NDSS", "RAID", "SP", "USENIX Security"
];

let start = meetings.shift();
let meetings_rg = meetings.reduce(|sum, v| sum + "|" + v, start);
let meetings_rg = "(" + meetings_rg + ")([\\s'-]*\\d+)?";

let start = titles.shift();
let title_rg = titles.reduce(|sum, v| sum + "|" + v, start);

let start = authors_array.shift();
let authors_rg = authors_array.reduce(|sum, v| sum + "|" + v, start);

export title_rg;
export authors_rg;
export meetings_rg;