.class public abstract synthetic Landroidx/media2/exoplayer/external/upstream/HttpDataSource$$CC;
.super Ljava/lang/Object;


# direct methods
.method public static $$triggerInterfaceInit()V
    .locals 1

    sget-object v0, Landroidx/media2/exoplayer/external/upstream/HttpDataSource;->REJECT_PAYWALL_TYPES:Landroidx/media2/exoplayer/external/util/Predicate;

    return-void
.end method

.method static synthetic lambda$static$0$HttpDataSource$$CC(Ljava/lang/String;)Z
    .locals 1
    .param p0, "contentType"    # Ljava/lang/String;

    .line 225
    invoke-static {p0}, Landroidx/media2/exoplayer/external/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 226
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "text"

    .line 227
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "text/vtt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "html"

    .line 228
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "xml"

    .line 229
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    goto :goto_1

    .line 228
    :cond_3
    goto :goto_1

    .line 226
    :cond_4
    nop

    .line 229
    :goto_1
    const/4 v0, 0x0

    .line 226
    :goto_2
    return v0
.end method
