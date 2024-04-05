## 1. Research: Signature Flutter Package

- Keywords:
    - flutter signature pad
    - flutter signature pad example
    - signature flutter package download
    - signature flutter package github
    - signature flutter package example
    - how to get app signature in flutter
    - hand signature flutter
    - flutter pdf signature
    - flutter signature pad github
    - flutter signature pad tutorials
    - flutter signature pad example github
    - flutter signature pad example pdf
    - flutter signature widget
    - signature flutter package download github
    - free signature flutter package example
    - flutter get app signature
    - flutter pdf signature online
    - flutter pdf signature generator

- Video Title: Flutter Signature Pad - Signature Package Flutter

## 2. Research: Competitors

**Flutter Videos/Articles**

- 6.7k: https://www.youtube.com/watch?v=RomU9gVHxpQ
- 179: https://www.youtube.com/watch?v=fup_k2KeTWo
- 17k: https://www.youtube.com/watch?v=Vvul-W7h634
- 151: https://www.youtube.com/watch?v=jscZt4RMMbU
- 638: https://www.youtube.com/watch?v=CF4lT74f-fg
- 599: https://www.youtube.com/watch?v=3rLuZl0qPuo
- 1.7k: https://www.youtube.com/watch?v=QO-aRyBK0s8
- 997: https://www.youtube.com/watch?v=hF5FKTfVCNo
- 5k: https://www.youtube.com/watch?v=z2fx1Vg518Q
- 62: https://www.youtube.com/shorts/KYphXWJvk00
- 6.9k: https://www.youtube.com/shorts/mM2Z-kHjELw

**Android/Swift/React Videos**

- 6.7k: https://www.youtube.com/watch?v=RomU9gVHxpQ
- 1.4k: https://www.youtube.com/shorts/KXw8rjU_wE8
- 17k: https://www.youtube.com/@MaxonFlutter
- 2.8k: https://www.youtube.com/watch?v=XpHeMz3MJBs
- 38: https://www.youtube.com/watch?v=W5U9tTAeN-M
- 17k: https://www.youtube.com/watch?v=XpHeMz3MJBs
- 6.6k: https://www.youtube.com/watch?v=Nj5V4iKLgv4
- 5k: https://www.youtube.com/watch?v=z2fx1Vg518Q
- 5.8k: https://www.youtube.com/watch?v=SeSo0gPFbtw

**Great Features**

- Touch Gesture Support: A good signature package for Flutter allows users to draw their signatures
  using touch gestures, making it intuitive and user-friendly.
- Customization: The ability to customize the appearance of the signature pad, such as stroke color,
  thickness, and background, allows developers to adapt the signature capture to the application's
  design.
- Saving and Exporting: The package may provide functionality to save the captured signature and
  export it in different formats, such as images or vector graphics.
- Smooth Drawing: The package should ensure smooth and responsive drawing to provide a natural feel
  for users as they sign.
- Undo/Redo Functionality: Including undo and redo options can enhance the user experience, allowing
  users to correct mistakes while signing.
- Platform Compatibility: A good Flutter package should be compatible with various platforms,
  including Android, iOS, and potentially web and desktop if your application targets those
  platforms.

**Problems from Videos**

- Question: I'm using Syncfusion flutter pdf to edit an existing document. I've managed to do fill
  all the fields. But how do I add the signature to that who's field type is PdfSignatureField?
- Answer: Follow this link: https://help.syncfusion.com/flutter/pdf/working-with-digital-signature

- Question: Hi maybe there is a way to add a signature in pdfviewer with a click in screen? or get
  the
  coordinates x and y from screen pdfveiwer with a click? Some can helps me
- Answer: Follow this
  link: https://stackoverflow.com/questions/60467425/how-to-place-signature-image-at-the-bottom-of-pdf-page-in-flutter
- Question: Can we compare signatures to authenticate people's signatures? Thank you very much
  once again
- Answer: This is not possible with this package. Simply file an issue
  here: https://github.com/4Q-s-r-o/signature/issues

**Problems from Flutter Stackoverflow**

- https://stackoverflow.com/questions/19842644/package-file-was-not-signed-correctly-error-when-android-app-auto-updates
- https://stackoverflow.com/questions/27872959/android-error-app-has-same-packaged-different-signature
- https://stackoverflow.com/questions/41709102/package-signatures-do-not-match-the-previously-installed-version
- https://stackoverflow.com/questions/74265571/invalid-signature-error-when-publishing-ios-app
- https://stackoverflow.com/questions/76469035/how-to-fix-error-no-signature-of-method-build-bfa8a7hzzhuxmyhtqs1bsth0p-androi
- https://stackoverflow.com/questions/76469035/how-to-fix-error-no-signature-of-method-build-bfa8a7hzzhuxmyhtqs1bsth0p-androi
- https://stackoverflow.com/questions/62219450/itms-90034-missing-or-invalid-signature-error
- https://stackoverflow.com/questions/30698234/invalid-signature-code-object-not-signed-at-all-error
- https://stackoverflow.com/questions/61057164/signature-cant-be-resolved-when-its-aliased-to-a-constant
- https://stackoverflow.com/questions/44271033/node-js-safari-push-notifications-intermittent-signature-failure
- https://stackoverflow.com/questions/63065696/error-in-getmethodsummary-signature-fitdiff
- https://stackoverflow.com/questions/50520343/google-play-suddenly-objects-that-my-app-signature-is-invalid
-

## 3. Video Structure

**Main Points / Purpose Of Lesson**

1. Undo, redo, and clear a signature
2. Customize signature like pen color, stroke, width, etc.
3. Save or export signature in Gallery

**The Structured Main Content**

1. Initialize the following:
    ```dart
      Uint8List? signature;
      final controller = SignatureController(
        penColor: Colors.white,
        penStrokeWidth: 3,
        exportPenColor: Colors.red,
        exportBackgroundColor: Colors.black,
      );
      @override
      void dispose() {
        controller.dispose();
        super.dispose();
      }
    ```
2. Inside scaffold, we have an app bar. For body, we are using different widgets in a column.
3. First, we are using signature widget:
    ```dart 
   Signature(
    controller: controller,
    width: double.infinity,
    height: 200,
    backgroundColor: Colors.black,
    ),
    ```
4. Next, we can undo by using `controller.undo()`, redo by using `controller.redo()`, and clear by
   using `controller.clear(),`
5. We can save signature by using `signature = await controller.toPngBytes();`.<br/>
   Now, we are using it as last child:
   ```dart
   if (signature != null)
   Image.memory(signature!, width: double.infinity),
   ```
6. We can also export it by using following button:
    ```dart
    
                    ElevatedButton(
                      onPressed: () async {
                        signature = await controller.toPngBytes();
                        setState(() {});
                        if (signature != null) {
                          final status = await Permission.storage.status;
                          if (!status.isGranted ||
                              status.isDenied ||
                              status.isPermanentlyDenied) {
                            await Permission.storage.request();
                          }
                          final time =
                              DateTime.now().toIso8601String().replaceAll('.', ':');
                          final result = await ImageGallerySaver.saveImage(
                            signature!,
                            name: 'signature_$time',
                          );
                          debugPrint(result.toString());
                          if (result['isSuccess']) {
                            if (!context.mounted) return;
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                  'Signature saved',
                                  style: TextStyle(
                                    fontSize: 24,
                                  ),
                                ),
                              ),
                            );
                            controller.clear();
                          }
                        }
                      },
                      child: const Text('Export in Gallery'),
                    ),
    ```
