<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB; 

class ArticleController extends Controller
{
    public function getAllArticles() {
        try {
            $articles = DB::select('CALL getArticles');
            return response()->json($articles); 
        } catch (\Exception $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }



    public function getOneArticle(Request $request) {
        $id = $request->input('id');
        try {
            $article = DB::select('CALL getOneArticle(?)', [$id]);
            return response()->json($article);
        } catch (\Exception $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }


    public function createArticle(Request $request) {
        $name = $request->input('name');
        $content = $request->input('content');
        try {
            DB::statement('CALL createArticle(?, ?)', [$name, $content]);
            return response()->json(['message' => 'Article created successfully'], 200);
        } catch (\Exception $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }
    
    
    
}
