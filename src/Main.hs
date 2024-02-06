{-# LANGUAGE OverloadedStrings #-}

module Main where

import System.Directory (getCurrentDirectory, getHomeDirectory)
import System.FilePath (joinPath, splitDirectories, (</>))

main :: IO ()
main = do
    currentDir <- getCurrentDirectory
    homeDir <- getHomeDirectory

    let relativePath =
            if homeDir `isPrefixOf` currentDir
                then "~" <> drop (length homeDir) currentDir
                else currentDir

    let simplifiedPath = simplifyPath relativePath
    putStrLn simplifiedPath

simplifyPath :: FilePath -> FilePath
simplifyPath path =
    let dirs = splitDirectories path
        firstDir = viaNonEmpty head dirs
        lastDir = viaNonEmpty last dirs
     in case (firstDir, lastDir, length dirs) of
            (Just x, Just y, l) -> if l > 2 then x </> "..." </> y else joinPath dirs
            _ -> "."
