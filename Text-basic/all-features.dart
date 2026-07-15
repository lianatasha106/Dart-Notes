import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('All Text Features'),
          backgroundColor: Colors.deepPurple,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ============================================
              // 1. BASIC TEXT
              // ============================================
              _sectionTitle('1. Basic Text'),
              Text('Hello, World!'),
              
              SizedBox(height: 20),
              
              // ============================================
              // 2. STYLED TEXT (Font Size, Color, Weight)
              // ============================================
              _sectionTitle('2. Styled Text'),
              Text(
                'Styled Text',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              Text(
                'Italic Text',
                style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  color: Colors.green,
                ),
              ),
              
              SizedBox(height: 20),
              
              // ============================================
              // 3. TEXT ALIGNMENT
              // ============================================
              _sectionTitle('3. Text Alignment'),
              Container(
                width: double.infinity,
                color: Colors.grey[200],
                padding: EdgeInsets.all(8),
                child: Column(
                  children: [
                    Text(
                      'Left Aligned',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Center Aligned',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Right Aligned',
                      textAlign: TextAlign.right,
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Justified: This text spreads out to fill the entire width of the container.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              
              SizedBox(height: 20),
              
              // ============================================
              // 4. TEXT OVERFLOW (Ellipsis, Fade, Clip)
              // ============================================
              _sectionTitle('4. Text Overflow'),
              Row(
                children: [
                  // Ellipsis
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Ellipsis:',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(
                            'This is a very long text that will overflow with ellipsis',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  
                  // Fade
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Fade:',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(
                            'This is a very long text that will fade out',
                            overflow: TextOverflow.fade,
                            maxLines: 1,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  // Clip
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Clip:',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(
                            'This is a very long text that will be clipped',
                            overflow: TextOverflow.clip,
                            maxLines: 1,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  
                  // Visible
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Visible:',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(
                            'This is a very long text that will overflow visibly',
                            overflow: TextOverflow.visible,
                            maxLines: 1,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              
              SizedBox(height: 20),
              
              // ============================================
              // 5. MAX LINES
              // ============================================
              _sectionTitle('5. Max Lines (Limit Lines)'),
              Container(
                padding: EdgeInsets.all(8),
                color: Colors.grey[200],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('This text shows only 2 lines:',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(
                      'Line 1: This is the first line of text.\nLine 2: This is the second line.\nLine 3: This is the third line (hidden).\nLine 4: This is the fourth line (hidden).',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              
              SizedBox(height: 20),
              
              // ============================================
              // 6. TEXT.RICH (Multiple Styles)
              // ============================================
              _sectionTitle('6. Text.rich (Multiple Styles)'),
              Text.rich(
                TextSpan(
                  text: 'Hello ',
                  style: TextStyle(fontSize: 24),
                  children: [
                    TextSpan(
                      text: 'beautiful ',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.blue,
                        fontSize: 24,
                      ),
                    ),
                    TextSpan(
                      text: 'world!',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                        fontSize: 28,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '⚠️ ',
                      style: TextStyle(fontSize: 24),
                    ),
                    TextSpan(
                      text: 'Warning: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                        fontSize: 18,
                      ),
                    ),
                    TextSpan(
                      text: 'This is a warning message with multiple styles.',
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              
              SizedBox(height: 20),
              
              // ============================================
              // 7. DECORATION (Underline, Line-through)
              // ============================================
              _sectionTitle('7. Text Decoration'),
              Text(
                'Underlined Text',
                style: TextStyle(
                  fontSize: 20,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.blue,
                  decorationStyle: TextDecorationStyle.solid,
                ),
              ),
              Text(
                'Underline with Dashes',
                style: TextStyle(
                  fontSize: 20,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.red,
                  decorationStyle: TextDecorationStyle.dashed,
                ),
              ),
              Text(
                'Line-through Text',
                style: TextStyle(
                  fontSize: 20,
                  decoration: TextDecoration.lineThrough,
                  decorationColor: Colors.red,
                ),
              ),
              Text(
                'Underline & Line-through',
                style: TextStyle(
                  fontSize: 20,
                  decoration: TextDecoration.combine([
                    TextDecoration.underline,
                    TextDecoration.lineThrough,
                  ]),
                  decorationColor: Colors.purple,
                ),
              ),
              
              SizedBox(height: 20),
              
              // ============================================
              // 8. SHADOW
              // ============================================
              _sectionTitle('8. Text Shadow'),
              Text(
                'Drop Shadow',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  shadows: [
                    Shadow(
                      offset: Offset(3, 3),
                      blurRadius: 4,
                      color: Colors.grey.withOpacity(0.5),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Glowing Text',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  shadows: [
                    Shadow(
                      offset: Offset(0, 0),
                      blurRadius: 10, //lagi sikit lagi nampak
                      color: Colors.pink,
                    ),
                  ],
                ),
              ),
              
              SizedBox(height: 20),
              
              // ============================================
              // 9. LETTER SPACING & WORD SPACING
              // ============================================
              _sectionTitle('9. Letter & Word Spacing'),
              Text(
                'W I D E  L E T T E R S',
                style: TextStyle(
                  fontSize: 20,
                  letterSpacing: 4.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Loose  word  spacing',
                style: TextStyle(
                  fontSize: 20,
                  wordSpacing: 8.0,
                ),
              ),
              Text(
                'Normal letters and words',
                style: TextStyle(fontSize: 20),
              ),
              
              SizedBox(height: 20),
              
              // ============================================
              // 10. BACKGROUND COLOR (Highlight)
              // ============================================
              _sectionTitle('10. Background Color (Highlight)'),
              Text(
                'Text with yellow highlight',
                style: TextStyle(
                  fontSize: 20,
                  backgroundColor: Colors.yellow,
                ),
              ),
              Text(
                'Text with pink highlight',
                style: TextStyle(
                  fontSize: 20,
                  backgroundColor: Colors.pink[100],
                ),
              ),
              
              SizedBox(height: 20),
              
              // ============================================
              // 11. INTERACTIVE TEXT (Tap to respond)
              // ============================================
              _sectionTitle('11. Interactive Text (Tap)'),
              GestureDetector(
                onTap: () {
                  print('Text was tapped!');
                },
                child: Text(
                  '👆 Tap me! (Check console)',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              SizedBox(height: 8),
              InkWell(
                onTap: () {
                  print('InkWell tapped!');
                },
                child: Text(
                  '👆 Tap with ripple effect!',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.deepPurple,
                  ),
                ),
              ),
              
              SizedBox(height: 20),
              
              // ============================================
              // 12. ALL COMBINED (One Text with Everything!)
              // ============================================
              _sectionTitle('12. All Features Combined!'),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.blue[200]!),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text.rich(
                      TextSpan(
                        text: '✨ ',
                        style: TextStyle(fontSize: 24),
                        children: [
                          TextSpan(
                            text: 'Complete ',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                          TextSpan(
                            text: 'Text ',
                            style: TextStyle(
                              fontSize: 28,
                              fontStyle: FontStyle.italic,
                              color: Colors.green,
                            ),
                          ),
                          TextSpan(
                            text: 'Demo',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurple,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.deepPurple,
                            ),
                          ),
                          TextSpan(
                            text: ' 🎉',
                            style: TextStyle(fontSize: 24),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'This text has it all: different styles, colors, sizes, bold, italic, underline, and more! It\'s a complete demonstration of everything you can do with Text in Flutter.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        height: 1.5,
                        letterSpacing: 0.5,
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.blue[100],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          print('🎯 Combined text tapped!');
                        },
                        child: Text(
                          '✨ Tap me! (See console) ✨',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue[800],
                            letterSpacing: 1.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

// Helper widget for section titles
Widget _sectionTitle(String title) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 8),
    child: Text(
      title,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.deepPurple,
      ),
    ),
  );
}
