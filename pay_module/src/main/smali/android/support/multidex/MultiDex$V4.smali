.class final Landroid/support/multidex/MultiDex$V4;
.super Ljava/lang/Object;
.source "MultiDex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/multidex/MultiDex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "V4"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/ClassLoader;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/ClassLoader;
    .param p1, "x1"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 563
    invoke-static {p0, p1}, Landroid/support/multidex/MultiDex$V4;->install(Ljava/lang/ClassLoader;Ljava/util/List;)V

    return-void
.end method

.method private static install(Ljava/lang/ClassLoader;Ljava/util/List;)V
    .locals 13
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List<",
            "+",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 573
    .local p1, "additionalClassPathEntries":Ljava/util/List;, "Ljava/util/List<+Ljava/io/File;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 575
    .local v0, "extraSize":I
    const-string v1, "path"

    invoke-static {p0, v1}, Landroid/support/multidex/MultiDex;->access$300(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 577
    .local v1, "pathField":Ljava/lang/reflect/Field;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 578
    .local v2, "path":Ljava/lang/StringBuilder;
    new-array v3, v0, [Ljava/lang/String;

    .line 579
    .local v3, "extraPaths":[Ljava/lang/String;
    new-array v4, v0, [Ljava/io/File;

    .line 580
    .local v4, "extraFiles":[Ljava/io/File;
    new-array v5, v0, [Ljava/util/zip/ZipFile;

    .line 581
    .local v5, "extraZips":[Ljava/util/zip/ZipFile;
    new-array v6, v0, [Ldalvik/system/DexFile;

    .line 582
    .local v6, "extraDexs":[Ldalvik/system/DexFile;
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v7

    .line 583
    .local v7, "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<+Ljava/io/File;>;"
    :goto_0
    invoke-interface {v7}, Ljava/util/ListIterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 584
    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    .line 585
    .local v8, "additionalEntry":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 586
    .local v9, "entryPath":Ljava/lang/String;
    const/16 v10, 0x3a

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    invoke-interface {v7}, Ljava/util/ListIterator;->previousIndex()I

    move-result v10

    .line 588
    .local v10, "index":I
    aput-object v9, v3, v10

    .line 589
    aput-object v8, v4, v10

    .line 590
    new-instance v11, Ljava/util/zip/ZipFile;

    invoke-direct {v11, v8}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    aput-object v11, v5, v10

    .line 591
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ".dex"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v9, v11, v12}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v11

    aput-object v11, v6, v10

    .line 592
    .end local v8    # "additionalEntry":Ljava/io/File;
    .end local v9    # "entryPath":Ljava/lang/String;
    .end local v10    # "index":I
    goto :goto_0

    .line 583
    :cond_0
    nop

    .line 594
    .end local v7    # "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<+Ljava/io/File;>;"
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, p0, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 595
    const-string v7, "mPaths"

    invoke-static {p0, v7, v3}, Landroid/support/multidex/MultiDex;->access$400(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 596
    const-string v7, "mFiles"

    invoke-static {p0, v7, v4}, Landroid/support/multidex/MultiDex;->access$400(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 597
    const-string v7, "mZips"

    invoke-static {p0, v7, v5}, Landroid/support/multidex/MultiDex;->access$400(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 598
    const-string v7, "mDexs"

    invoke-static {p0, v7, v6}, Landroid/support/multidex/MultiDex;->access$400(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 599
    return-void
.end method
