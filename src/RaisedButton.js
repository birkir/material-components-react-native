
import React, { Component } from 'react';
import { ViewPropTypes, ColorPropType, EdgeInsetsPropType, requireNativeComponent } from 'react-native';
import { PropTypes } from 'prop-types';

class RNMaterialComponentsRaisedButton extends Component {

  static propTypes = {
    ...ViewPropTypes,
    title: PropTypes.string,
    enabled: PropTypes.bool,
    children: PropTypes.string,
    elevation: PropTypes.number,
    hitAreaInsets: EdgeInsetsPropType,
    backgroundColor: ColorPropType,
    disabledAlpha: PropTypes.number,
    uppercaseTitle: PropTypes.bool,
    underlyingColorHint: ColorPropType,
    inkMaxRippleRadius: PropTypes.number,
    inkStyle: PropTypes.string,
    inkColor: ColorPropType,
  }

  static defaultProps = {
    enabled: true,
    uppercaseTitle: true,
  }

  render () {
    const {
      children,
      ...rest,
    } = this.props;
    return (
      <RaisedButton
        {...rest}
        title={children}
      />
    );
  }
}

const RaisedButton = requireNativeComponent('RNMaterialComponentsRaisedButton', RNMaterialComponentsRaisedButton);

export default RNMaterialComponentsRaisedButton
