/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * 
 * Generated with the TypeScript template
 * https://github.com/emin93/react-native-template-typescript
 * 
 * @format
 */

import React, { Component } from "react";
import { StyleSheet, Text, View, TextInput, Platform, ToastAndroid } from "react-native";

interface Props { }

interface State {
  name: string
}

export default class App extends Component<Props, State> {
  // Layout Rendering
  render() {
    return (
      <View style={styles.container}>
        <Text style={styles.label}>Enter Your Name</Text>
        <TextInput style={styles.nameInput} onChangeText={this.updateName} />
        {(this.state && this.state.name.length > 0) &&
          <Text style={styles.greeting}>Hello {this.state.name}!!</Text>
        }
      </View>
    );
  }

  // Functions
  updateName = (name: string) => {
    this.setState({ name: name })
  }
}

// Styling
const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: "center",
    alignItems: "center",
    padding: 12,
    // use different background color for different platforms
    backgroundColor: Platform.select({
      ios: "#999999",
      android: "#A5C639"
    })
  },
  label: {
    fontSize: 20,
    textAlign: "center",
    margin: 10,
  },
  nameInput: {
    width: "100%",
    height: 40,
    borderWidth: 1,
    borderColor: "gray"
  },
  greeting: {
    marginBottom: 5,
    fontSize: 25
  }
});