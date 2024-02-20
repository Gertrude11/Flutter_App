import 'package:flutter/material.dart';
import 'package:flutter_offline/flutter_offline.dart';

class ConnectionWidget extends StatelessWidget {
  const ConnectionWidget();

  @override
  Widget build(BuildContext context) {
    return OfflineBuilder(
      connectivityBuilder: (BuildContext context,
          ConnectivityResult connectivity, Widget child) {
        final bool connected = connectivity != ConnectivityResult.none;
        return Stack(
          fit: StackFit.expand,
          children: [
            child,
            Positioned(
              left: 0.0,
              right: 0.0,
              height: 32.0,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                color: connected ? const Color(0xFF00EE44) : const Color(0xFFEE4400),
                child: connected
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Text(
                            "BACK ONLINE",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "OFFLINE",
                            style: TextStyle(color: Colors.white),
                          ),
                          const SizedBox(
                            width: 8.0,
                          ),
                          const SizedBox(
                            width: 12.0,
                            height: 12.0,
                            child: CircularProgressIndicator(
                              strokeWidth: 2.0,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                  Colors.white),
                            ),
                          ),
                        ],
                      ),
              ),
            ),
          ],
        );
      },
      child: const Center(
        child: Text("ONLINE Or OFFLINE"),
      ),
    );
  }
}
