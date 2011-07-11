{-# LANGUAGE TypeFamilies, FlexibleInstances, FlexibleContexts #-}

module HEP.Automation.MadGraph.Model.C1V where

import Text.Printf

import Text.Parsec
import Control.Monad.Identity

import Text.StringTemplate
import Text.StringTemplate.Helpers

import HEP.Automation.MadGraph.Model
import HEP.Automation.MadGraph.Model.Common

import System.FilePath ((</>))

data C1V = C1V
         deriving Show

instance Model C1V where
  data ModelParam C1V = C1VParam { mnp :: Double, gnpR :: Double, gnpL :: Double } 
                      deriving Show
  briefShow _ = "C1V"
  madgraphVersion _ = MadGraph5
  modelName _ = "C1V_UFO"
  modelFromString str = case str of 
                          "C1V_UFO" -> Just C1V
                          _ -> Nothing
  paramCard4Model C1V  = "param_card_C1V.dat" 
  paramCardSetup tpath C1V (C1VParam m gR gL) = do 
    templates <- directoryGroup tpath 
    return $ ( renderTemplateGroup
                 templates
                 [ ("mnp"  , (printf "%.4e" m :: String))
                 , ("gnpR" , (printf "%.4e" gR :: String))
                 , ("gnpL" , (printf "%.4e" gL :: String)) ]
                 (paramCard4Model C1V) ) ++ "\n\n\n"
  briefParamShow (C1VParam m gR gL) = "M"++show m++"GR"++show gR++"GL"++show gL
  interpreteParam str = let r = parse c1vparse "" str 
                        in case r of 
                          Right param -> param 
                          Left err -> error (show err)

c1vparse :: ParsecT String () Identity (ModelParam C1V) 
c1vparse = do 
  char 'M' 
  massstr <- many1 (oneOf "+-0123456789.")
  string "GR"
  grstr <- many1 (oneOf "+-0123456789.")
  string "GL"
  glstr <- many1 (oneOf "+-0123456789.")
  return (C1VParam (read massstr) (read grstr) (read glstr))








