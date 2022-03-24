//
//  ViewController.swift
//  Vadayala_SearchApp
//
//  Created by student on 3/23/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var searchTextField: UITextField!
    
    @IBOutlet weak var resultImage: UIImageView!
    
    @IBOutlet weak var topicInfoText: UITextView!
    
    
    @IBOutlet weak var searchButton: UIButton!
    
    @IBOutlet weak var resetButton: UIButton!
    
    @IBOutlet weak var prevButton: UIButton!
    
    @IBOutlet weak var nextButton: UIButton!
    
    var arr = [["actor1","actor2","actor3","actor4","actor5"],["book1","book2","book3","book4","book5"],["animal1","animal2","animal3","animal4","animal5",],["bg","404"]]
    
    var actors = ["actor","actors","hero","bollywood"]
    
    var books = ["books","book","novels"]
    
    var animals = ["animals","animal","creature"]
    
    var topic = 0
    var imag1:Int!
    var imag2:Int!
    var imag3:Int!
    var name1:Int!
    var name2:Int!
    var name3:Int!
    var text1:Int!
    var text2:Int!
    var text3:Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        prevButton.isHidden = true
        nextButton.isHidden = true
        searchButton.isEnabled = false
        resetButton.isHidden = true
        resultImage.image = UIImage(named: arr[3][0])
        topicInfoText.text = nil
    }
    
        
    @IBAction func searchTextField(_ sender: UITextField) {
        searchButton.isEnabled = true
        if(sender.text?.trimmingCharacters(in: .whitespaces) == ""){
            searchButton.isEnabled = false
            
        }
        else{
            prevButton.isHidden = false
            nextButton.isHidden = false
            prevButton.isEnabled = false
            nextButton.isEnabled = false
            searchButton.isEnabled = true
            resetButton.isHidden = false
    }
    }
    
        
        
    
    
    var actor = [["Siddharth Malhotra","Surya","Akshay kumar","Aditya Roy Kapoor ","Prabhas"],["Siddharth Malhotra is an Indian film actor and former model who works in Hindi filmsborn on 16 january 1985. Dissatisfied with his modelling career, which he began at the age of 18, he went on to work as a trainee assistant director to Karan Johar for the 2010 film My Name Is Khan.Malhotra made his acting debut with a leading role in Johar's teen drama Student of the Year (2012), for which he received a Filmfare Award for Best Male Debut nomination. He went on to star in successful films such as Hasee Toh Phasee (2014), Ek Villain (2014), Brothers (2015), Kapoor & Sons (2016), Ittefaq (2017), Aiyaary (2018) and Shershaah (2021)","Saravanan Sivakumar (born 23 July 1975), known by his stage name Suriya, is an Indian actor, producer, television presenter and a philanthropist. He is best known for his work in Tamil cinema, where he is one of the highest paid actors. Among his awards include three Tamil Nadu State Film Awards, four Filmfare Awards South, two Edison Awards, a Cinema Express Award,a CineMAA Award and a Vijay Award. Based on the earnings of Indian celebrities, Suriya has been included in the Forbes India Celebrity 100 list six times","Akshay Kumar is an Indian-born naturalised Canadian actor, television presenter and film producer who works in Hindi-language films. He made his debut with a minor role in the 1987 Mahesh Bhatt-directed Indian film Aaj. He appeared as the lead actor in Saugandh (1991) before his breakthrough with the suspense thriller Khiladi (1992), the first film of the Khiladi series. In the same year, he was cast in the Pramod Chakravorty produced film Deedar. In 1994, Kumar earned his first Filmfare Best Actor Award nomination for his acting opposite Kajol in the Yash Chopra-produced romance Yeh Dillagi and also featured in the actioner Mohra, the year's second highest-grossing film.","Aditya Roy Kapur (born 16 November 1985) is an Indian film actor who works in Hindi-language films. He made his Bollywood debut with 2009 film London Dreams but rose to fame with 2013 film Aashiqui 2.","Uppalapati Venkata Suryanarayana Prabhas Raju (born 23 October 1979), known mononymously as Prabhas, is an Indian actor who works predominantly in Telugu cinema. One of the highest-paid actors in Indian cinema, Prabhas has featured in Forbes India's Celebrity 100 list three times since 2015 based on his income and popularity. He has received seven Filmfare Awards South nominations and is a recipient of the Nandi Award and the SIIMA Award."]]
                                                                                               
                                                                                               
var book = [["2 states","Harry Potter","400 days","Pride and prejudice","The secret"],["2 States: The Story of My Marriage commonly known as 2 States is a 2009 novel written by Chetan Bhagat. It is the story about a couple coming from two states in India, who face hardships in convincing their parents to approve of their marriage. Bhagat wrote this novel after quitting his job as an investment banker. This is his fourth book after Five Point Someone, One Night @ the Call Center and The Three Mistakes of My Life.","Harry Potter is a series of seven fantasy novels written by British author J. K. Rowling. The novels chronicle the lives of a young wizard, Harry Potter, and his friends Hermione Granger and Ron Weasley, all of whom are students at Hogwarts School of Witchcraft and Wizardry. The main story arc concerns Harry's struggle against Lord Voldemort, a dark wizard who intends to become immortal, overthrow the wizard governing body known as the Ministry of Magic and subjugate all wizards and Muggles (non-magical people)","400 Days is the tenth novel and the thirteenth book overall written by the Indian author Chetan Bhagat. It is the third installment of the author's popular Keshav-Saurabh mystery series after The Girl in Room 105(2018) and One Arranged Murder(2020)","Pride & Prejudice is a 2005 romantic drama film directed by Joe Wright, in his feature directorial debut, and based on Jane Austen's 1813 novel of the same name. The film features five sisters from an English family of landed gentry as they deal with issues of marriage, morality and misconceptions.","The Secret is a 2006 self-help book promoting by Rhonda Byrne, based on the earlier film of the same name. It is based on the belief of the law of attraction, which claims that thoughts can change a person's life directly.[1][2] The book alleges energy as assurance of its effectiveness. The book has sold 30 million copies worldwide and has been translated into 50 languages"]]

    var animal = [["lion","Elephant","Tiger","Zebra","Monkey"],["The lion (Panthera leo) is a large cat of the genus Panthera native to Africa and India. It has a muscular, deep-chested body, short, rounded head, round ears, and a hairy tuft at the end of its tail. It is sexually dimorphic; adult male lions are larger than females and have a prominent mane. It is a social species, forming groups called prides","Elephants are the largest existing land animals. Three living species are currently recognised: the African bush elephant, the African forest elephant, and the Asian elephant. They are an informal grouping within the proboscidean family Elephantidae. Elephantidae is the only surviving family of proboscideans; extinct members include the mastodons","The tiger (Panthera tigris) is the largest living cat species and a member of the genus Panthera. It is most recognisable for its dark vertical stripes on orange fur with a white underside. An apex predator, it primarily preys on ungulates such as deer and wild boar.","Zebras (UK: /ˈzɛbrəz/, US: /ˈziːbrəz/) (subgenus Hippotigris) are African equines with distinctive black-and-white striped coats. There are three living species: the Grévy's zebra (Equus grevyi), plains zebra (E. quagga), and the mountain zebra (E. zebra). Zebras share the genus Equus with horses and asses, the three groups being the only living members of the family Equidae.","Monkey is a common name that may refer to most mammals of the infraorder Simiiformes, also known as the simians. Traditionally, all animals in the group now known as simians are counted as monkeys except the apes, a grouping known as paraphyletic; however in the broader sense based on cladistics, apes (Hominoidea) are also included, making the terms monkeys and simians synonyms in regard of their scope."]]
    
    
    
    @IBAction func searchButtonAction(_ sender: UIButton) {
        imag1 = 0
        imag2 = 0
        imag3 = 0
        name1 = 0
        name2 = 0
        name3 = 0
        text1 = 0
        text2 = 0
        text3 = 0
        prevButton.isHidden = false
        nextButton.isHidden = false
        prevButton.isEnabled = false
        nextButton.isEnabled = false
        resetButton.isEnabled = true
        if(actors.contains(searchTextField.text!)){
            nextButton.isEnabled = true
            prevButton.isEnabled = false
            resultImage.image = UIImage(named: arr[0][imag1])
            topic = 1
            topicInfoText.text = actor[1][text1]
        }
        else if(books.contains(searchTextField.text!)){
            nextButton.isEnabled = true
            prevButton.isEnabled = false
            resultImage.image = UIImage(named: arr[1][imag2])
            
            topic = 2
            topicInfoText.text = book[1][text2]
        }
        
        else if(animals.contains(searchTextField.text!)){
            nextButton.isEnabled = true
            prevButton.isEnabled = false
            resultImage.image = UIImage(named: arr[2][imag3])

            topic = 3
            topicInfoText.text = animal[1][text3]
        }
        else{
            resultImage.image = UIImage(named: arr[3][1])
//            resultImage.image = nil
            topicInfoText.text = nil
            prevButton.isHidden = true
            nextButton.isHidden = true
            resetButton.isEnabled = true
        }
        
        
    }
    
    @IBAction func showPrevImagesBtn(_ sender: Any) {
        searchButton.isEnabled = false
        if(topic == 1){
            imag1 -= 1
            name1 -= 1
            text1 -= 1
            dataUpdate(imgNo: imag1)
        }
        if(topic == 2){
            imag2 -= 1
            name2 -= 1
            text2 -= 1
            dataUpdate(imgNo: imag2)
        }
        if(topic == 3){
            imag3 -= 1
            name3 -= 1
            text3 -= 1
            dataUpdate(imgNo: imag3)
        }
        
    }
    
    @IBAction func showNextImagesBtn(_ sender: Any) {
        searchButton.isEnabled = false
        if(topic == 1){
            imag1 += 1
            name1 += 1
            text1 += 1
            dataUpdate(imgNo: imag1)
        }
        if(topic == 2){
            imag2 += 1
            name2 += 1
            text2 += 1
            dataUpdate(imgNo: imag2)
        }
        if(topic == 3){
            imag3 += 1
            name3 += 1
            text3 += 1
            dataUpdate(imgNo: imag3)
        }
    }
    
    
    @IBAction func resetButton(_ sender: Any) {
        prevButton.isHidden = true
        nextButton.isHidden = true
     resultImage.image = UIImage(named: arr[3][0])
        topicInfoText.text = nil
        searchTextField.text = nil
        resetButton.isHidden = true
        searchButton.isEnabled = false
        imag1 = 0
        imag2 = 0
        imag3 = 0
        name1 = 0
        name2 = 0
        name3 = 0
        text1 = 0
        text2 = 0
        text3 = 0
        topic = 0
        
        
    }
    
    func dataUpdate(imgNo: Int){
        if(topic == 1){
            if imag1 == arr[0].count-1 {
                nextButton.isEnabled = false
                prevButton.isEnabled = true
                resultImage.image = UIImage(named: arr[0][imag1])
                topicInfoText.text = actor[1][text1]
            }
            else if(imag1 == 0){
                prevButton.isEnabled = false
                nextButton.isEnabled = true
                resultImage.image = UIImage(named: arr[0][imag1])
                topicInfoText.text = actor[1][text1]
            }
            else{
                nextButton.isEnabled = true
                prevButton.isEnabled = true
                resultImage.image = UIImage(named: arr[0][imag1])
                topicInfoText.text = actor[1][text1]
            }
        }
        if(topic == 2){
            if imag2 == arr[1].count-1 {
                nextButton.isEnabled = false
                prevButton.isEnabled = true
                resultImage.image = UIImage(named: arr[1][imag2])
                topicInfoText.text = book[1][text2]
            }
            else if(imag2 == 0){
                prevButton.isEnabled = false
                nextButton.isEnabled = true
                resultImage.image = UIImage(named: arr[1][imag2])
                topicInfoText.text = book[1][text2]
            }
            else{
                nextButton.isEnabled = true
                prevButton.isEnabled = true
                resultImage.image = UIImage(named: arr[1][imag2])
                topicInfoText.text = book[1][text2]
                
            }
        }
        if(topic == 3){
            if imag3 == arr[1].count-1 {
                nextButton.isEnabled = false
                prevButton.isEnabled = true
                resultImage.image = UIImage(named: arr[2][imag3])
                
                topicInfoText.text = animal[1][text3]
            }
            else if(imag3 == 0){
                prevButton.isEnabled = false
                nextButton.isEnabled = true
                resultImage.image = UIImage(named: arr[2][imag3])
                topicInfoText.text = animal[1][text3]
            }
            else{
                nextButton.isEnabled = true
                prevButton.isEnabled = true
                resultImage.image = UIImage(named: arr[2][imag3])
                topicInfoText.text = animal[1][text3]
                
            }
        }
    }
    

    
    
    
    
    
}



