// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract ColorBoard {

    uint256 public constant boardSizeX = 5;
    uint256 public constant boardSizeY = 7;

    enum Color { NoColor, Black, Red }

    mapping(uint256 => mapping(uint256 => Color)) private cellColors;

    function setColor(uint256 x, uint256 y, Color color) public {
        require(x < boardSizeX, "X coordinate out of range");
        require(y < boardSizeY, "Y coordinate out of range");
        
        cellColors[x][y] = color;
    }

    function getColor(uint256 x, uint256 y) public view returns (Color) {
        require(x < boardSizeX, "X coordinate out of range");
        require(y < boardSizeY, "Y coordinate out of range");
        
        return cellColors[x][y];
    }
}
