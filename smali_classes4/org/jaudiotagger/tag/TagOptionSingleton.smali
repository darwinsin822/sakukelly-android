.class public Lorg/jaudiotagger/tag/TagOptionSingleton;
.super Ljava/lang/Object;
.source "TagOptionSingleton.java"


# static fields
.field private static DEFAULT:Ljava/lang/String;

.field private static defaultOptions:Ljava/lang/String;

.field private static tagOptionTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/jaudiotagger/tag/TagOptionSingleton;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private checkIsWritable:Z

.field private filenameTagSave:Z

.field private id3v1Save:Z

.field private id3v1SaveAlbum:Z

.field private id3v1SaveArtist:Z

.field private id3v1SaveComment:Z

.field private id3v1SaveGenre:Z

.field private id3v1SaveTitle:Z

.field private id3v1SaveTrack:Z

.field private id3v1SaveYear:Z

.field private id3v23DefaultTextEncoding:B

.field private id3v24DefaultTextEncoding:B

.field private id3v24UnicodeTextEncoding:B

.field private id3v2ITunes12_6WorkGroupingMode:Z

.field private id3v2PaddingCopyTag:Z

.field private id3v2PaddingWillShorten:Z

.field private id3v2Save:Z

.field private id3v2Version:Lorg/jaudiotagger/tag/reference/ID3V2Version;

.field private isAPICDescriptionITunesCompatible:Z

.field private isAndroid:Z

.field private isEncodeUTF16BomAsLittleEndian:Z

.field private isWriteMp3GenresAsText:Z

.field private isWriteMp4GenresAsText:Z

.field private isWriteWavForTwonky:Z

.field private keywordMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/jaudiotagger/tag/id3/framebody/ID3v24FrameBody;",
            ">;",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private language:Ljava/lang/String;

.field private lyrics3KeepEmptyFieldIfRead:Z

.field private lyrics3Save:Z

.field private lyrics3SaveEmptyField:Z

.field private lyrics3SaveFieldMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private numberMP3SyncFrame:I

.field private originalSavedAfterAdjustingID3v2Padding:Z

.field private padNumberTotalLength:Lorg/jaudiotagger/tag/options/PadNumberOption;

.field private padNumbers:Z

.field private parenthesisMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private playerCompatability:I

.field private preserveFileIdentity:Z

.field private removeTrailingTerminatorOnWrite:Z

.field private replaceWordMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private resetTextEncodingForExistingFrames:Z

.field private timeStampFormat:B

.field private truncateTextWithoutErrors:Z

.field private unsyncTags:Z

.field private vorbisAlbumArtistReadOptions:Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;

.field private vorbisAlbumArtistSaveOptions:Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistSaveOptions;

.field private wavOptions:Lorg/jaudiotagger/audio/wav/WavOptions;

.field private wavSaveOptions:Lorg/jaudiotagger/audio/wav/WavSaveOptions;

.field private wavSaveOrder:Lorg/jaudiotagger/audio/wav/WavSaveOrder;

.field private writeChunkSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jaudiotagger/tag/TagOptionSingleton;->tagOptionTable:Ljava/util/HashMap;

    .line 122
    const-string v0, "default"

    sput-object v0, Lorg/jaudiotagger/tag/TagOptionSingleton;->DEFAULT:Ljava/lang/String;

    .line 127
    sput-object v0, Lorg/jaudiotagger/tag/TagOptionSingleton;->defaultOptions:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->isWriteWavForTwonky:Z

    .line 54
    sget-object v1, Lorg/jaudiotagger/audio/wav/WavOptions;->READ_ID3_ONLY:Lorg/jaudiotagger/audio/wav/WavOptions;

    iput-object v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->wavOptions:Lorg/jaudiotagger/audio/wav/WavOptions;

    .line 66
    sget-object v1, Lorg/jaudiotagger/audio/wav/WavSaveOptions;->SAVE_BOTH:Lorg/jaudiotagger/audio/wav/WavSaveOptions;

    iput-object v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->wavSaveOptions:Lorg/jaudiotagger/audio/wav/WavSaveOptions;

    .line 78
    sget-object v1, Lorg/jaudiotagger/audio/wav/WavSaveOrder;->INFO_THEN_ID3:Lorg/jaudiotagger/audio/wav/WavSaveOrder;

    iput-object v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->wavSaveOrder:Lorg/jaudiotagger/audio/wav/WavSaveOrder;

    .line 90
    sget-object v1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistSaveOptions;->WRITE_ALBUMARTIST:Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistSaveOptions;

    iput-object v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->vorbisAlbumArtistSaveOptions:Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistSaveOptions;

    .line 102
    sget-object v1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;->READ_ALBUMARTIST_THEN_JRIVER:Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;

    iput-object v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->vorbisAlbumArtistReadOptions:Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;

    .line 132
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->keywordMap:Ljava/util/HashMap;

    .line 138
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3SaveFieldMap:Ljava/util/HashMap;

    .line 143
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->parenthesisMap:Ljava/util/HashMap;

    .line 148
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->replaceWordMap:Ljava/util/HashMap;

    .line 155
    const-string v1, "eng"

    iput-object v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->language:Ljava/lang/String;

    .line 161
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->filenameTagSave:Z

    const/4 v1, 0x1

    .line 166
    iput-boolean v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1Save:Z

    .line 172
    iput-boolean v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveAlbum:Z

    .line 178
    iput-boolean v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveArtist:Z

    .line 184
    iput-boolean v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveComment:Z

    .line 190
    iput-boolean v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveGenre:Z

    .line 196
    iput-boolean v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveTitle:Z

    .line 202
    iput-boolean v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveTrack:Z

    .line 208
    iput-boolean v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveYear:Z

    .line 215
    iput-boolean v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v2PaddingCopyTag:Z

    .line 221
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v2PaddingWillShorten:Z

    .line 226
    iput-boolean v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v2Save:Z

    .line 241
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v2ITunes12_6WorkGroupingMode:Z

    .line 247
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3KeepEmptyFieldIfRead:Z

    .line 253
    iput-boolean v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3Save:Z

    .line 260
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3SaveEmptyField:Z

    .line 265
    iput-boolean v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->originalSavedAfterAdjustingID3v2Padding:Z

    const/4 v2, 0x2

    .line 271
    iput-byte v2, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->timeStampFormat:B

    const/4 v2, 0x3

    .line 278
    iput v2, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->numberMP3SyncFrame:I

    .line 284
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->unsyncTags:Z

    .line 290
    iput-boolean v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->removeTrailingTerminatorOnWrite:Z

    .line 296
    iput-byte v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v23DefaultTextEncoding:B

    .line 302
    iput-byte v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v24DefaultTextEncoding:B

    .line 308
    iput-byte v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v24UnicodeTextEncoding:B

    .line 316
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->resetTextEncodingForExistingFrames:Z

    .line 323
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->truncateTextWithoutErrors:Z

    .line 330
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->padNumbers:Z

    .line 338
    sget-object v2, Lorg/jaudiotagger/tag/options/PadNumberOption;->PAD_ONE_ZERO:Lorg/jaudiotagger/tag/options/PadNumberOption;

    iput-object v2, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->padNumberTotalLength:Lorg/jaudiotagger/tag/options/PadNumberOption;

    .line 344
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->isAndroid:Z

    .line 346
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->isAPICDescriptionITunesCompatible:Z

    .line 352
    iput-boolean v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->isEncodeUTF16BomAsLittleEndian:Z

    const/4 v2, -0x1

    .line 359
    iput v2, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->playerCompatability:I

    const-wide/32 v2, 0x400000

    .line 364
    iput-wide v2, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->writeChunkSize:J

    .line 366
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->isWriteMp4GenresAsText:Z

    .line 368
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->isWriteMp3GenresAsText:Z

    .line 370
    sget-object v2, Lorg/jaudiotagger/tag/reference/ID3V2Version;->ID3_V23:Lorg/jaudiotagger/tag/reference/ID3V2Version;

    iput-object v2, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v2Version:Lorg/jaudiotagger/tag/reference/ID3V2Version;

    .line 376
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->checkIsWritable:Z

    .line 381
    iput-boolean v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->preserveFileIdentity:Z

    .line 393
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/TagOptionSingleton;->setToDefault()V

    return-void
.end method

.method public static getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;
    .locals 1

    .line 402
    sget-object v0, Lorg/jaudiotagger/tag/TagOptionSingleton;->defaultOptions:Ljava/lang/String;

    invoke-static {v0}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance(Ljava/lang/String;)Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/jaudiotagger/tag/TagOptionSingleton;
    .locals 2

    .line 411
    sget-object v0, Lorg/jaudiotagger/tag/TagOptionSingleton;->tagOptionTable:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/TagOptionSingleton;

    if-nez v0, :cond_0

    .line 415
    new-instance v0, Lorg/jaudiotagger/tag/TagOptionSingleton;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/TagOptionSingleton;-><init>()V

    .line 416
    sget-object v1, Lorg/jaudiotagger/tag/TagOptionSingleton;->tagOptionTable:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static getInstanceKey()Ljava/lang/String;
    .locals 1

    .line 468
    sget-object v0, Lorg/jaudiotagger/tag/TagOptionSingleton;->defaultOptions:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addKeyword(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/jaudiotagger/tag/id3/framebody/ID3v24FrameBody;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/tag/TagException;
        }
    .end annotation

    .line 1054
    const-class v0, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    .line 1059
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1063
    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->keywordMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1065
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1066
    iget-object v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->keywordMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1070
    :cond_0
    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->keywordMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/util/LinkedList;

    .line 1073
    :goto_0
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    .line 1056
    :cond_2
    new-instance p2, Lorg/jaudiotagger/tag/TagException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid class type. Must be AbstractId3v2FrameBody "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/jaudiotagger/tag/TagException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public addParenthesis(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1083
    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->parenthesisMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addReplaceWord(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1092
    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->replaceWordMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getID3V2Version()Lorg/jaudiotagger/tag/reference/ID3V2Version;
    .locals 1

    .line 451
    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v2Version:Lorg/jaudiotagger/tag/reference/ID3V2Version;

    return-object v0
.end method

.method public getId3v23DefaultTextEncoding()B
    .locals 1

    .line 1143
    iget-byte v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v23DefaultTextEncoding:B

    return v0
.end method

.method public getId3v24DefaultTextEncoding()B
    .locals 1

    .line 1168
    iget-byte v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v24DefaultTextEncoding:B

    return v0
.end method

.method public getId3v24UnicodeTextEncoding()B
    .locals 1

    .line 1194
    iget-byte v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v24UnicodeTextEncoding:B

    return v0
.end method

.method public getKeywordIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/jaudiotagger/tag/id3/framebody/ID3v24FrameBody;",
            ">;>;"
        }
    .end annotation

    .line 684
    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->keywordMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getKeywordListIterator(Ljava/lang/Class;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/jaudiotagger/tag/id3/framebody/ID3v24FrameBody;",
            ">;)",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 693
    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->keywordMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 718
    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getLyrics3SaveField(Ljava/lang/String;)Z
    .locals 1

    .line 789
    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3SaveFieldMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public getLyrics3SaveFieldMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 797
    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3SaveFieldMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getNewReplaceWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 806
    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->replaceWordMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getNumberMP3SyncFrame()I
    .locals 1

    .line 832
    iget v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->numberMP3SyncFrame:I

    return v0
.end method

.method public getOldReplaceWordIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 840
    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->replaceWordMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getOpenParenthesisIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 857
    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->parenthesisMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getPadNumberTotalLength()Lorg/jaudiotagger/tag/options/PadNumberOption;
    .locals 1

    .line 1352
    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->padNumberTotalLength:Lorg/jaudiotagger/tag/options/PadNumberOption;

    return-object v0
.end method

.method public getPlayerCompatability()I
    .locals 1

    .line 1282
    iget v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->playerCompatability:I

    return v0
.end method

.method public getTimeStampFormat()B
    .locals 1

    .line 910
    iget-byte v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->timeStampFormat:B

    return v0
.end method

.method public getVorbisAlbumArtisReadOptions()Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->vorbisAlbumArtistReadOptions:Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;

    return-object v0
.end method

.method public getVorbisAlbumArtistSaveOptions()Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistSaveOptions;
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->vorbisAlbumArtistSaveOptions:Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistSaveOptions;

    return-object v0
.end method

.method public getWavOptions()Lorg/jaudiotagger/audio/wav/WavOptions;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->wavOptions:Lorg/jaudiotagger/audio/wav/WavOptions;

    return-object v0
.end method

.method public getWavSaveOptions()Lorg/jaudiotagger/audio/wav/WavSaveOptions;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->wavSaveOptions:Lorg/jaudiotagger/audio/wav/WavSaveOptions;

    return-object v0
.end method

.method public getWavSaveOrder()Lorg/jaudiotagger/audio/wav/WavSaveOrder;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->wavSaveOrder:Lorg/jaudiotagger/audio/wav/WavSaveOrder;

    return-object v0
.end method

.method public getWriteChunkSize()J
    .locals 2

    .line 1311
    iget-wide v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->writeChunkSize:J

    return-wide v0
.end method

.method public isAPICDescriptionITunesCompatible()Z
    .locals 1

    .line 1365
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->isAPICDescriptionITunesCompatible:Z

    return v0
.end method

.method public isAndroid()Z
    .locals 1

    .line 1267
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->isAndroid:Z

    return v0
.end method

.method public isCheckIsWritable()Z
    .locals 1

    .line 1378
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->checkIsWritable:Z

    return v0
.end method

.method public isEncodeUTF16BomAsLittleEndian()Z
    .locals 1

    .line 1296
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->isEncodeUTF16BomAsLittleEndian:Z

    return v0
.end method

.method public isFilenameTagSave()Z
    .locals 1

    .line 435
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->filenameTagSave:Z

    return v0
.end method

.method public isId3v1Save()Z
    .locals 1

    .line 485
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1Save:Z

    return v0
.end method

.method public isId3v1SaveAlbum()Z
    .locals 1

    .line 501
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveAlbum:Z

    return v0
.end method

.method public isId3v1SaveArtist()Z
    .locals 1

    .line 517
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveArtist:Z

    return v0
.end method

.method public isId3v1SaveComment()Z
    .locals 1

    .line 533
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveComment:Z

    return v0
.end method

.method public isId3v1SaveGenre()Z
    .locals 1

    .line 549
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveGenre:Z

    return v0
.end method

.method public isId3v1SaveTitle()Z
    .locals 1

    .line 565
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveTitle:Z

    return v0
.end method

.method public isId3v1SaveTrack()Z
    .locals 1

    .line 581
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveTrack:Z

    return v0
.end method

.method public isId3v1SaveYear()Z
    .locals 1

    .line 597
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveYear:Z

    return v0
.end method

.method public isId3v2ITunes12_6WorkGroupingMode()Z
    .locals 1

    .line 651
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v2ITunes12_6WorkGroupingMode:Z

    return v0
.end method

.method public isId3v2PaddingCopyTag()Z
    .locals 1

    .line 614
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v2PaddingCopyTag:Z

    return v0
.end method

.method public isId3v2PaddingWillShorten()Z
    .locals 1

    .line 631
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v2PaddingWillShorten:Z

    return v0
.end method

.method public isId3v2Save()Z
    .locals 1

    .line 647
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v2Save:Z

    return v0
.end method

.method public isLyrics3KeepEmptyFieldIfRead()Z
    .locals 1

    .line 734
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3KeepEmptyFieldIfRead:Z

    return v0
.end method

.method public isLyrics3Save()Z
    .locals 1

    .line 750
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3Save:Z

    return v0
.end method

.method public isLyrics3SaveEmptyField()Z
    .locals 1

    .line 766
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3SaveEmptyField:Z

    return v0
.end method

.method public isOpenParenthesis(Ljava/lang/String;)Z
    .locals 1

    .line 849
    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->parenthesisMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isOriginalSavedAfterAdjustingID3v2Padding()Z
    .locals 1

    .line 874
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->originalSavedAfterAdjustingID3v2Padding:Z

    return v0
.end method

.method public isPadNumbers()Z
    .locals 1

    .line 1257
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->padNumbers:Z

    return v0
.end method

.method public isPreserveFileIdentity()Z
    .locals 1

    .line 1399
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->preserveFileIdentity:Z

    return v0
.end method

.method public isRemoveTrailingTerminatorOnWrite()Z
    .locals 1

    .line 1121
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->removeTrailingTerminatorOnWrite:Z

    return v0
.end method

.method public isResetTextEncodingForExistingFrames()Z
    .locals 1

    .line 1220
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->resetTextEncodingForExistingFrames:Z

    return v0
.end method

.method public isTruncateTextWithoutErrors()Z
    .locals 1

    .line 1242
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->truncateTextWithoutErrors:Z

    return v0
.end method

.method public isUnsyncTags()Z
    .locals 1

    .line 1100
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->unsyncTags:Z

    return v0
.end method

.method public isWriteMp3GenresAsText()Z
    .locals 1

    .line 1339
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->isWriteMp3GenresAsText:Z

    return v0
.end method

.method public isWriteMp4GenresAsText()Z
    .locals 1

    .line 1325
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->isWriteMp4GenresAsText:Z

    return v0
.end method

.method public isWriteWavForTwonky()Z
    .locals 1

    .line 1414
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->isWriteWavForTwonky:Z

    return v0
.end method

.method public setAPICDescriptionITunesCompatible(Z)V
    .locals 0

    .line 1370
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->isAPICDescriptionITunesCompatible:Z

    return-void
.end method

.method public setAndroid(Z)V
    .locals 0

    .line 1272
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->isAndroid:Z

    return-void
.end method

.method public setCheckIsWritable(Z)V
    .locals 0

    .line 1382
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->checkIsWritable:Z

    return-void
.end method

.method public setEncodeUTF16BomAsLittleEndian(Z)V
    .locals 0

    .line 1301
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->isEncodeUTF16BomAsLittleEndian:Z

    return-void
.end method

.method public setFilenameTagSave(Z)V
    .locals 0

    .line 427
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->filenameTagSave:Z

    return-void
.end method

.method public setID3V2Version(Lorg/jaudiotagger/tag/reference/ID3V2Version;)V
    .locals 0

    .line 443
    iput-object p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v2Version:Lorg/jaudiotagger/tag/reference/ID3V2Version;

    return-void
.end method

.method public setId3v1Save(Z)V
    .locals 0

    .line 477
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1Save:Z

    return-void
.end method

.method public setId3v1SaveAlbum(Z)V
    .locals 0

    .line 493
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveAlbum:Z

    return-void
.end method

.method public setId3v1SaveArtist(Z)V
    .locals 0

    .line 509
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveArtist:Z

    return-void
.end method

.method public setId3v1SaveComment(Z)V
    .locals 0

    .line 525
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveComment:Z

    return-void
.end method

.method public setId3v1SaveGenre(Z)V
    .locals 0

    .line 541
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveGenre:Z

    return-void
.end method

.method public setId3v1SaveTitle(Z)V
    .locals 0

    .line 557
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveTitle:Z

    return-void
.end method

.method public setId3v1SaveTrack(Z)V
    .locals 0

    .line 573
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveTrack:Z

    return-void
.end method

.method public setId3v1SaveYear(Z)V
    .locals 0

    .line 589
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveYear:Z

    return-void
.end method

.method public setId3v23DefaultTextEncoding(B)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1156
    :cond_0
    iput-byte p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v23DefaultTextEncoding:B

    :cond_1
    return-void
.end method

.method public setId3v24DefaultTextEncoding(B)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 1181
    :cond_0
    iput-byte p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v24DefaultTextEncoding:B

    :cond_1
    return-void
.end method

.method public setId3v24UnicodeTextEncoding(B)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 1207
    :cond_0
    iput-byte p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v24UnicodeTextEncoding:B

    :cond_1
    return-void
.end method

.method public setId3v2ITunes12_6WorkGroupingMode(Z)V
    .locals 1

    .line 670
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v2ITunes12_6WorkGroupingMode:Z

    if-eq v0, p1, :cond_0

    .line 672
    invoke-static {}, Lorg/jaudiotagger/tag/id3/ID3v22Frames;->getInstanceOf()Lorg/jaudiotagger/tag/id3/ID3v22Frames;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/id3/ID3v22Frames;->setITunes12_6WorkGroupingMode(Z)V

    .line 673
    invoke-static {}, Lorg/jaudiotagger/tag/id3/ID3v23Frames;->getInstanceOf()Lorg/jaudiotagger/tag/id3/ID3v23Frames;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/id3/ID3v23Frames;->setITunes12_6WorkGroupingMode(Z)V

    .line 674
    invoke-static {}, Lorg/jaudiotagger/tag/id3/ID3v24Frames;->getInstanceOf()Lorg/jaudiotagger/tag/id3/ID3v24Frames;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Frames;->setITunes12_6WorkGroupingMode(Z)V

    .line 675
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v2ITunes12_6WorkGroupingMode:Z

    :cond_0
    return-void
.end method

.method public setId3v2PaddingCopyTag(Z)V
    .locals 0

    .line 606
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v2PaddingCopyTag:Z

    return-void
.end method

.method public setId3v2PaddingWillShorten(Z)V
    .locals 0

    .line 623
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v2PaddingWillShorten:Z

    return-void
.end method

.method public setId3v2Save(Z)V
    .locals 0

    .line 639
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v2Save:Z

    return-void
.end method

.method public setInstanceKey(Ljava/lang/String;)V
    .locals 0

    .line 460
    sput-object p1, Lorg/jaudiotagger/tag/TagOptionSingleton;->defaultOptions:Ljava/lang/String;

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 1

    .line 705
    invoke-static {}, Lorg/jaudiotagger/tag/reference/Languages;->getInstanceOf()Lorg/jaudiotagger/tag/reference/Languages;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/reference/Languages;->getIdToValueMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 707
    iput-object p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->language:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setLyrics3KeepEmptyFieldIfRead(Z)V
    .locals 0

    .line 726
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3KeepEmptyFieldIfRead:Z

    return-void
.end method

.method public setLyrics3Save(Z)V
    .locals 0

    .line 742
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3Save:Z

    return-void
.end method

.method public setLyrics3SaveEmptyField(Z)V
    .locals 0

    .line 758
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3SaveEmptyField:Z

    return-void
.end method

.method public setLyrics3SaveField(Ljava/lang/String;Z)V
    .locals 1

    .line 777
    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3SaveFieldMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setNumberMP3SyncFrame(I)V
    .locals 0

    .line 819
    iput p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->numberMP3SyncFrame:I

    return-void
.end method

.method public setOriginalSavedAfterAdjustingID3v2Padding(Z)V
    .locals 0

    .line 866
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->originalSavedAfterAdjustingID3v2Padding:Z

    return-void
.end method

.method public setPadNumberTotalLength(Lorg/jaudiotagger/tag/options/PadNumberOption;)V
    .locals 0

    .line 1357
    iput-object p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->padNumberTotalLength:Lorg/jaudiotagger/tag/options/PadNumberOption;

    return-void
.end method

.method public setPadNumbers(Z)V
    .locals 0

    .line 1262
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->padNumbers:Z

    return-void
.end method

.method public setPlayerCompatability(I)V
    .locals 0

    .line 1287
    iput p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->playerCompatability:I

    return-void
.end method

.method public setPreserveFileIdentity(Z)V
    .locals 0

    .line 1409
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->preserveFileIdentity:Z

    return-void
.end method

.method public setRemoveTrailingTerminatorOnWrite(Z)V
    .locals 0

    .line 1132
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->removeTrailingTerminatorOnWrite:Z

    return-void
.end method

.method public setResetTextEncodingForExistingFrames(Z)V
    .locals 0

    .line 1233
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->resetTextEncodingForExistingFrames:Z

    return-void
.end method

.method public setTimeStampFormat(B)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 894
    :cond_0
    iput-byte p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->timeStampFormat:B

    :cond_1
    return-void
.end method

.method public setToDefault()V
    .locals 14

    .line 918
    const-string v0, "ft"

    const-string v1, "ft."

    const-string v2, "ftng."

    const-string v3, "ftng"

    const-string v4, "featuring"

    const-string v5, "feat"

    const-string v6, "f."

    const-string v7, "original"

    const-string v8, "feat."

    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->isWriteWavForTwonky:Z

    .line 919
    sget-object v10, Lorg/jaudiotagger/audio/wav/WavOptions;->READ_ID3_UNLESS_ONLY_INFO:Lorg/jaudiotagger/audio/wav/WavOptions;

    iput-object v10, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->wavOptions:Lorg/jaudiotagger/audio/wav/WavOptions;

    .line 920
    sget-object v10, Lorg/jaudiotagger/audio/wav/WavSaveOptions;->SAVE_BOTH:Lorg/jaudiotagger/audio/wav/WavSaveOptions;

    iput-object v10, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->wavSaveOptions:Lorg/jaudiotagger/audio/wav/WavSaveOptions;

    .line 921
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->keywordMap:Ljava/util/HashMap;

    .line 922
    iput-boolean v9, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->filenameTagSave:Z

    const/4 v10, 0x1

    .line 923
    iput-boolean v10, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1Save:Z

    .line 924
    iput-boolean v10, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveAlbum:Z

    .line 925
    iput-boolean v10, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveArtist:Z

    .line 926
    iput-boolean v10, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveComment:Z

    .line 927
    iput-boolean v10, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveGenre:Z

    .line 928
    iput-boolean v10, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveTitle:Z

    .line 929
    iput-boolean v10, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveTrack:Z

    .line 930
    iput-boolean v10, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveYear:Z

    .line 931
    iput-boolean v10, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v2PaddingCopyTag:Z

    .line 932
    iput-boolean v9, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v2PaddingWillShorten:Z

    .line 933
    iput-boolean v10, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v2Save:Z

    .line 934
    const-string v11, "eng"

    iput-object v11, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->language:Ljava/lang/String;

    .line 935
    iput-boolean v9, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3KeepEmptyFieldIfRead:Z

    .line 936
    iput-boolean v10, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3Save:Z

    .line 937
    iput-boolean v9, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3SaveEmptyField:Z

    .line 938
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iput-object v11, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3SaveFieldMap:Ljava/util/HashMap;

    const/4 v11, 0x3

    .line 939
    iput v11, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->numberMP3SyncFrame:I

    .line 940
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iput-object v11, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->parenthesisMap:Ljava/util/HashMap;

    .line 941
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iput-object v11, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->replaceWordMap:Ljava/util/HashMap;

    const/4 v11, 0x2

    .line 942
    iput-byte v11, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->timeStampFormat:B

    .line 943
    iput-boolean v9, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->unsyncTags:Z

    .line 944
    iput-boolean v10, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->removeTrailingTerminatorOnWrite:Z

    .line 945
    iput-byte v9, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v23DefaultTextEncoding:B

    .line 946
    iput-byte v9, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v24DefaultTextEncoding:B

    .line 947
    iput-byte v10, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v24UnicodeTextEncoding:B

    .line 948
    iput-boolean v9, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->resetTextEncodingForExistingFrames:Z

    .line 949
    iput-boolean v9, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->truncateTextWithoutErrors:Z

    .line 950
    iput-boolean v9, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->padNumbers:Z

    .line 951
    iput-boolean v9, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->isAPICDescriptionITunesCompatible:Z

    .line 952
    iput-boolean v9, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->isAndroid:Z

    .line 953
    iput-boolean v10, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->isEncodeUTF16BomAsLittleEndian:Z

    const-wide/32 v11, 0x4c4b40

    .line 954
    iput-wide v11, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->writeChunkSize:J

    .line 955
    iput-boolean v9, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->isWriteMp4GenresAsText:Z

    .line 956
    sget-object v11, Lorg/jaudiotagger/tag/options/PadNumberOption;->PAD_ONE_ZERO:Lorg/jaudiotagger/tag/options/PadNumberOption;

    iput-object v11, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->padNumberTotalLength:Lorg/jaudiotagger/tag/options/PadNumberOption;

    .line 957
    sget-object v11, Lorg/jaudiotagger/tag/reference/ID3V2Version;->ID3_V23:Lorg/jaudiotagger/tag/reference/ID3V2Version;

    iput-object v11, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v2Version:Lorg/jaudiotagger/tag/reference/ID3V2Version;

    .line 958
    iput-boolean v9, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->checkIsWritable:Z

    .line 959
    iput-boolean v10, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->preserveFileIdentity:Z

    .line 962
    invoke-static {}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Fields;->getInstanceOf()Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Fields;

    move-result-object v9

    invoke-virtual {v9}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Fields;->getIdToValueMap()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 965
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 967
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 968
    iget-object v12, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3SaveFieldMap:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v12, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 973
    :cond_0
    :try_start_0
    const-class v9, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v10, "ultimix"

    invoke-virtual {p0, v9, v10}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 974
    const-class v9, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v10, "dance"

    invoke-virtual {p0, v9, v10}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 975
    const-class v9, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v10, "mix"

    invoke-virtual {p0, v9, v10}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 976
    const-class v9, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v10, "remix"

    invoke-virtual {p0, v9, v10}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 977
    const-class v9, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v10, "rmx"

    invoke-virtual {p0, v9, v10}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 978
    const-class v9, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v10, "live"

    invoke-virtual {p0, v9, v10}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 979
    const-class v9, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v10, "cover"

    invoke-virtual {p0, v9, v10}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 980
    const-class v9, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v10, "soundtrack"

    invoke-virtual {p0, v9, v10}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 981
    const-class v9, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v10, "version"

    invoke-virtual {p0, v9, v10}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 982
    const-class v9, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v10, "acoustic"

    invoke-virtual {p0, v9, v10}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 983
    const-class v9, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    invoke-virtual {p0, v9, v7}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 984
    const-class v9, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v10, "cd"

    invoke-virtual {p0, v9, v10}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 985
    const-class v9, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v10, "extended"

    invoke-virtual {p0, v9, v10}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 986
    const-class v9, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v10, "vocal"

    invoke-virtual {p0, v9, v10}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 987
    const-class v9, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v10, "unplugged"

    invoke-virtual {p0, v9, v10}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 988
    const-class v9, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v10, "acapella"

    invoke-virtual {p0, v9, v10}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 989
    const-class v9, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v10, "edit"

    invoke-virtual {p0, v9, v10}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 990
    const-class v9, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v10, "radio"

    invoke-virtual {p0, v9, v10}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 991
    const-class v9, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    invoke-virtual {p0, v9, v7}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 992
    const-class v7, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v9, "album"

    invoke-virtual {p0, v7, v9}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 993
    const-class v7, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v9, "studio"

    invoke-virtual {p0, v7, v9}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 994
    const-class v7, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v9, "instrumental"

    invoke-virtual {p0, v7, v9}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 995
    const-class v7, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v9, "unedited"

    invoke-virtual {p0, v7, v9}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 996
    const-class v7, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v9, "karoke"

    invoke-virtual {p0, v7, v9}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 997
    const-class v7, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v9, "quality"

    invoke-virtual {p0, v7, v9}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 998
    const-class v7, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v9, "uncensored"

    invoke-virtual {p0, v7, v9}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 999
    const-class v7, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v9, "clean"

    invoke-virtual {p0, v7, v9}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1000
    const-class v7, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v9, "dirty"

    invoke-virtual {p0, v7, v9}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1002
    const-class v7, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;

    invoke-virtual {p0, v7, v6}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1003
    const-class v7, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;

    invoke-virtual {p0, v7, v5}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1004
    const-class v7, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;

    invoke-virtual {p0, v7, v8}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1005
    const-class v7, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;

    invoke-virtual {p0, v7, v4}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1006
    const-class v7, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;

    invoke-virtual {p0, v7, v3}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1007
    const-class v7, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;

    invoke-virtual {p0, v7, v2}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1008
    const-class v7, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;

    invoke-virtual {p0, v7, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1009
    const-class v7, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;

    invoke-virtual {p0, v7, v0}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1011
    invoke-static {}, Lorg/jaudiotagger/tag/reference/GenreTypes;->getInstanceOf()Lorg/jaudiotagger/tag/reference/GenreTypes;

    move-result-object v7

    invoke-virtual {v7}, Lorg/jaudiotagger/tag/reference/GenreTypes;->getValueToIdMap()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 1013
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1015
    const-class v9, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {p0, v9, v10}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jaudiotagger/tag/TagException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1025
    :cond_1
    const-string v7, "v."

    const-string v9, "vs."

    invoke-virtual {p0, v7, v9}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addReplaceWord(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    invoke-virtual {p0, v9, v9}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addReplaceWord(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    const-string v7, "versus"

    invoke-virtual {p0, v7, v9}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addReplaceWord(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    invoke-virtual {p0, v6, v8}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addReplaceWord(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    invoke-virtual {p0, v5, v8}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addReplaceWord(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    invoke-virtual {p0, v4, v8}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addReplaceWord(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    invoke-virtual {p0, v2, v8}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addReplaceWord(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    invoke-virtual {p0, v3, v8}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addReplaceWord(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    invoke-virtual {p0, v1, v8}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addReplaceWord(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    invoke-virtual {p0, v0, v8}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addReplaceWord(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    const-class v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getKeywordListIterator(Ljava/lang/Class;)Ljava/util/Iterator;

    .line 1040
    const-string v0, "("

    const-string v1, ")"

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addParenthesis(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    const-string v0, "["

    const-string v1, "]"

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addParenthesis(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    const-string v0, "{"

    const-string v1, "}"

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addParenthesis(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    const-string v0, "<"

    const-string v1, ">"

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addParenthesis(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    .line 1021
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setTruncateTextWithoutErrors(Z)V
    .locals 0

    .line 1252
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->truncateTextWithoutErrors:Z

    return-void
.end method

.method public setUnsyncTags(Z)V
    .locals 0

    .line 1111
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->unsyncTags:Z

    return-void
.end method

.method public setVorbisAlbumArtistReadOptions(Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->vorbisAlbumArtistReadOptions:Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;

    return-void
.end method

.method public setVorbisAlbumArtistSaveOptions(Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistSaveOptions;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->vorbisAlbumArtistSaveOptions:Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistSaveOptions;

    return-void
.end method

.method public setWavOptions(Lorg/jaudiotagger/audio/wav/WavOptions;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->wavOptions:Lorg/jaudiotagger/audio/wav/WavOptions;

    return-void
.end method

.method public setWavSaveOptions(Lorg/jaudiotagger/audio/wav/WavSaveOptions;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->wavSaveOptions:Lorg/jaudiotagger/audio/wav/WavSaveOptions;

    return-void
.end method

.method public setWavSaveOrder(Lorg/jaudiotagger/audio/wav/WavSaveOrder;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->wavSaveOrder:Lorg/jaudiotagger/audio/wav/WavSaveOrder;

    return-void
.end method

.method public setWriteChunkSize(J)V
    .locals 0

    .line 1316
    iput-wide p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->writeChunkSize:J

    return-void
.end method

.method public setWriteMp3GenresAsText(Z)V
    .locals 0

    .line 1344
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->isWriteMp3GenresAsText:Z

    return-void
.end method

.method public setWriteMp4GenresAsText(Z)V
    .locals 0

    .line 1330
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->isWriteMp4GenresAsText:Z

    return-void
.end method

.method public setWriteWavForTwonky(Z)V
    .locals 0

    .line 1419
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->isWriteWavForTwonky:Z

    return-void
.end method
