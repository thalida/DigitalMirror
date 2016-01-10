'use strict';

var webpack = require('webpack');
var path = require('path');
var HtmlWebpackPlugin = require('html-webpack-plugin');
var ExtractTextPlugin = require("extract-text-webpack-plugin");
var ngAnnotatePlugin = require('ng-annotate-webpack-plugin');

var APP = __dirname + '/app';
var DIST = __dirname + '/public';

module.exports = {
	context: APP,
	entry: {
		app: './'
	},
	output: {
		path: DIST,
		filename: "[name].js",
		chunkFilename: "[id].js",
		publicPath: '',
		hash: true
	},
	module: {
		loaders: [
			{
				test: /\.scss$/,
				loader: ExtractTextPlugin.extract("style-loader", "css-loader!resolve-url-loader!sass-loader?sourceMap")
			},
			{
				test: /\.coffee$/,
				loaders: ["coffee-loader"]
			},
			{
				test: /\.html$/,
				loader: 'ngtemplate?relativeTo=' + APP + '/!html'
			},
			{
				test: /\.(woff|woff2|ttf|eot|svg|png|gif|jpg|jpeg)(\?]?.*)?$/,
				loader: 'file-loader?name=[path][name].[ext]'
			},
			{
				test: /\.(wav|mp3)(\?]?.*)?$/,
				loader: 'file-loader?name=[path][name].[ext]'
			},
			{
				test: /\.json/,
				loader: 'json'
			}
		]
	},
	resolve: {
		root: APP,
		extensions: ["", ".webpack.js", ".web.js", ".js", ".coffee"]
	},
	plugins: [
		new ExtractTextPlugin("[name].css", {
			allChunks: true
		}),
		new HtmlWebpackPlugin({
			template: APP + '/index.html', // Load a custom template
			inject: true
		}),
		// new ngAnnotatePlugin({
		// 	add: true,
		// 	map: true
		// }),
		new webpack.HotModuleReplacementPlugin(),
		new webpack.optimize.DedupePlugin(),
		new webpack.ProvidePlugin({
			jQuery: 'jquery',
			$: 'jquery',
			moment: 'moment'
		}),
		new webpack.DefinePlugin({
			MODE: {
				production: process.env.NODE_ENV === 'production'
			}
		})
	]
};
