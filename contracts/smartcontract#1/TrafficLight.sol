//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract TrafficLight {
	// 신호등의 상태를 나타내는 열거형 정의
	enum LightState { Red, Yellow, Green }

	// 현재 신호등 상태를 저장하는 변수
	LightState public currentLight;

	// 생성자에서 초기 상태를 설정
	constructor() {
		currentLight = LightState.Red;
	}

}