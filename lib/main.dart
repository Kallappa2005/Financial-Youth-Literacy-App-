import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Finance Lessons'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LessonNavigator(title: 'Lesson 1', pages: lesson1Content)),
                );
              },
              child: const Text('Lesson 1: Introduction to Financial Management'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LessonNavigator(title: 'Lesson 2', pages: lesson2Content)),
                );
              },
              child: const Text('Lesson 2: Budgeting Basics'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LessonNavigator(title: 'Lesson 3', pages: lesson3Content)),
                );
              },
              child: const Text('Lesson 3: Managing Debt Effectively'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LessonNavigator(title: 'Lesson 4', pages: lesson4Content)),
                );
              },
              child: const Text('Lesson 4: Saving and Investing'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LessonNavigator(title: 'Lesson 5', pages: lesson5Content)),
                );
              },
              child: const Text('Lesson 5: Retirement Planning'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LessonNavigator(title: 'Lesson 6', pages: lesson6Content)),
                );
              },
              child: const Text('Lesson 6: Financial Goal Setting'),
            ),
          ],
        ),
      ),
    );
  }
}

// Lesson Navigator
class LessonNavigator extends StatefulWidget {
  final String title;
  final List<String> pages;

  const LessonNavigator({super.key, required this.title, required this.pages});

  @override
  _LessonNavigatorState createState() => _LessonNavigatorState();
}

class _LessonNavigatorState extends State<LessonNavigator> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  widget.pages[currentPage],
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: currentPage > 0
                      ? () {
                    setState(() {
                      currentPage--;
                    });
                  }
                      : null,
                  child: Text('Previous'),
                ),
                ElevatedButton(
                  onPressed: currentPage < widget.pages.length - 1
                      ? () {
                    setState(() {
                      currentPage++;
                    });
                  }
                      : null,
                  child: Text('Next'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Lesson Content
const List<String> lesson1Content = [
  '''Page 1 of Lesson 1:
Financial management is the process of planning, organizing, directing, and controlling financial activities to ensure stability and growth. It involves activities like budgeting, saving, and analyzing financial health.''',
  '''Page 2 of Lesson 1:
Proper financial management helps achieve goals such as avoiding debt, preparing for emergencies, and building wealth. Learn key principles to manage your finances effectively.''',
  '''Page 3 of Lesson 1:
By setting clear goals, tracking expenses, and prioritizing savings, you can master financial management and gain control of your financial future.''',
];

const List<String> lesson2Content = [
  '''Page 1 of Lesson 2:
Budgeting is the cornerstone of financial success. A budget is a plan that helps you allocate income to expenses, savings, and other priorities.''',
  '''Page 2 of Lesson 2:
Methods like the 50/30/20 rule divide your income: 50% for needs, 30% for wants, and 20% for savings and debt repayment. Tailor these methods to fit your lifestyle.''',
  '''Page 3 of Lesson 2:
Use apps or spreadsheets to track expenses and stick to your budget. Budgeting not only controls spending but also helps you identify areas for improvement.''',
];

const List<String> lesson3Content = [
  '''Page 1 of Lesson 3:
Managing debt is essential for financial freedom. Start by creating a repayment strategy for high-interest debts like credit cards.''',
  '''Page 2 of Lesson 3:
Debt Snowball Method: Focus on smaller debts first for quick wins. Debt Avalanche Method: Prioritize debts with higher interest rates for long-term savings.''',
  '''Page 3 of Lesson 3:
Avoid accumulating unnecessary debt by budgeting wisely and building an emergency fund to cover unexpected expenses.''',
];

const List<String> lesson4Content = [
  '''Page 1 of Lesson 4:
Saving is the foundation of financial security. Building an emergency fund protects you from unforeseen financial challenges.''',
  '''Page 2 of Lesson 4:
Investing grows your wealth over time. Options include stocks, bonds, real estate, and mutual funds. Diversify to balance risk and reward.''',
  '''Page 3 of Lesson 4:
Start investing early to benefit from compound growth. Understand your risk tolerance and set long-term financial goals.''',
];

const List<String> lesson5Content = [
  '''Page 1 of Lesson 5:
Retirement planning ensures a secure future. Begin early to maximize savings and benefit from compound interest.''',
  '''Page 2 of Lesson 5:
Retirement accounts like 401(k)s and IRAs offer tax benefits. Contribute consistently and increase contributions as your income grows.''',
  '''Page 3 of Lesson 5:
Review your retirement plan regularly to align with changing goals. Seek professional advice for optimal retirement strategies.''',
];

const List<String> lesson6Content = [
  '''Page 1 of Lesson 6:
Financial goal setting provides direction and purpose. SMART goals (Specific, Measurable, Achievable, Relevant, Time-bound) are effective.''',
  '''Page 2 of Lesson 6:
Define short-term goals (e.g., emergency fund), mid-term goals (e.g., car purchase), and long-term goals (e.g., home ownership).''',
  '''Page 3 of Lesson 6:
Track progress and adjust your plans as needed. Stay disciplined and consistent to achieve financial success.''',
];




