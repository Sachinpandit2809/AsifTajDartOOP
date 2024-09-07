#include <iostream>
#include <vector>
#include <string>

using namespace std;

class Question {
public:
    string questionText;
    vector<string> options;
    char correctOption;

    Question(string q, vector<string> opts, char correct) {
        questionText = q;
        options = opts;
        correctOption = correct;
    }
};

class Quiz {
private:
    vector<Question> questions;
    int score;

public:
    Quiz() : score(0) {}

    void addQuestion(Question q) {
        questions.push_back(q);
    }

    void startQuiz() {
        char answer;
        for (int i = 0; i < questions.size(); i++) {
            cout << "Question " << i + 1 << ": " << questions[i].questionText << endl;
            for (int j = 0; j < questions[i].options.size(); j++) {
                cout << (char)('A' + j) << ". " << questions[i].options[j] << endl;
            }
            cout << "Your answer: ";
            cin >> answer;
            answer = toupper(answer);
            if (answer == questions[i].correctOption) {
                cout << "Correct!" << endl;
                score++;
            } else {
                cout << "Wrong! The correct answer is: " << questions[i].correctOption << endl;
            }
            cout << endl;
        }
    }

    void showResult() {
        cout << "Quiz finished!" << endl;
        cout << "Your score: " << score << "/" << questions.size() << endl;
    }
};

int main() {
    Quiz quiz;

    quiz.addQuestion(Question("What is the capital of France?", {"Berlin", "Madrid", "Paris", "Rome"}, 'C'));
    quiz.addQuestion(Question("Which planet is known as the Red Planet?", {"Earth", "Mars", "Jupiter", "Saturn"}, 'B'));
    quiz.addQuestion(Question("Who wrote 'Hamlet'?", {"Charles Dickens", "J.K. Rowling", "William Shakespeare", "Jane Austen"}, 'C'));
    quiz.addQuestion(Question("Which element is represented by the chemical symbol 'O'?", {"Oxygen", "Gold", "Osmium", "Oganesson"}, 'A'));
    quiz.addQuestion(Question("What is the largest mammal in the world?", {"Elephant", "Blue Whale", "Giraffe", "Polar Bear"}, 'B'));
    quiz.addQuestion(Question("Which country is known as the Land of the Rising Sun?", {"China", "India", "Japan", "South Korea"}, 'C'));
    quiz.addQuestion(Question("Who painted the Mona Lisa?", {"Vincent van Gogh", "Pablo Picasso", "Leonardo da Vinci", "Claude Monet"}, 'C'));
    quiz.addQuestion(Question("Which is the longest river in the world?", {"Amazon River", "Nile River", "Yangtze River", "Mississippi River"}, 'B'));
    quiz.addQuestion(Question("In which year did World War I begin?", {"1912", "1914", "1916", "1918"}, 'B'));
    quiz.addQuestion(Question("Which programming language is known as the mother of all languages?", {"C", "Python", "Java", "Pascal"}, 'A'));

    cout << "Welcome to the Online Quiz System!" << endl;
    quiz.startQuiz();
    quiz.showResult();

    return 0;
}
